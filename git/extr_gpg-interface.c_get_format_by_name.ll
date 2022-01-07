; ModuleID = '/home/carl/AnghaBench/git/extr_gpg-interface.c_get_format_by_name.c'
source_filename = "/home/carl/AnghaBench/git/extr_gpg-interface.c_get_format_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpg_format = type { i32 }

@gpg_format = common dso_local global %struct.gpg_format* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gpg_format* (i8*)* @get_format_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gpg_format* @get_format_by_name(i8* %0) #0 {
  %2 = alloca %struct.gpg_format*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %26, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.gpg_format*, %struct.gpg_format** @gpg_format, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.gpg_format* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %5
  %11 = load %struct.gpg_format*, %struct.gpg_format** @gpg_format, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.gpg_format, %struct.gpg_format* %11, i64 %13
  %15 = getelementptr inbounds %struct.gpg_format, %struct.gpg_format* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @strcmp(i32 %16, i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %10
  %21 = load %struct.gpg_format*, %struct.gpg_format** @gpg_format, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.gpg_format, %struct.gpg_format* %21, i64 %23
  store %struct.gpg_format* %24, %struct.gpg_format** %2, align 8
  br label %30

25:                                               ; preds = %10
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %5

29:                                               ; preds = %5
  store %struct.gpg_format* null, %struct.gpg_format** %2, align 8
  br label %30

30:                                               ; preds = %29, %20
  %31 = load %struct.gpg_format*, %struct.gpg_format** %2, align 8
  ret %struct.gpg_format* %31
}

declare dso_local i32 @ARRAY_SIZE(%struct.gpg_format*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
