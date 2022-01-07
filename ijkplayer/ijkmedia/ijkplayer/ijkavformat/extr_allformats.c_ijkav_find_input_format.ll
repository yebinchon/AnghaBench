; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_allformats.c_ijkav_find_input_format.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkplayer/ijkavformat/extr_allformats.c_ijkav_find_input_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVInputFormat = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.AVInputFormat* (i8*)* @ijkav_find_input_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.AVInputFormat* @ijkav_find_input_format(i8* %0) #0 {
  %2 = alloca %struct.AVInputFormat*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.AVInputFormat*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.AVInputFormat* null, %struct.AVInputFormat** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.AVInputFormat* null, %struct.AVInputFormat** %2, align 8
  br label %30

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %28, %18, %8
  %10 = load %struct.AVInputFormat*, %struct.AVInputFormat** %4, align 8
  %11 = call %struct.AVInputFormat* @av_iformat_next(%struct.AVInputFormat* %10)
  store %struct.AVInputFormat* %11, %struct.AVInputFormat** %4, align 8
  %12 = icmp ne %struct.AVInputFormat* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %9
  %14 = load %struct.AVInputFormat*, %struct.AVInputFormat** %4, align 8
  %15 = getelementptr inbounds %struct.AVInputFormat, %struct.AVInputFormat* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %9

19:                                               ; preds = %13
  %20 = load i8*, i8** %3, align 8
  %21 = load %struct.AVInputFormat*, %struct.AVInputFormat** %4, align 8
  %22 = getelementptr inbounds %struct.AVInputFormat, %struct.AVInputFormat* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @strcmp(i8* %20, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = load %struct.AVInputFormat*, %struct.AVInputFormat** %4, align 8
  store %struct.AVInputFormat* %27, %struct.AVInputFormat** %2, align 8
  br label %30

28:                                               ; preds = %19
  br label %9

29:                                               ; preds = %9
  store %struct.AVInputFormat* null, %struct.AVInputFormat** %2, align 8
  br label %30

30:                                               ; preds = %29, %26, %7
  %31 = load %struct.AVInputFormat*, %struct.AVInputFormat** %2, align 8
  ret %struct.AVInputFormat* %31
}

declare dso_local %struct.AVInputFormat* @av_iformat_next(%struct.AVInputFormat*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
