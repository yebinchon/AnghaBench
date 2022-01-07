; ModuleID = '/home/carl/AnghaBench/git/t/t4256/1/extr_mailinfo.c_decode_q_segment.c'
source_filename = "/home/carl/AnghaBench/git/t/t4256/1/extr_mailinfo.c_decode_q_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.strbuf* (%struct.strbuf*, i32)* @decode_q_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.strbuf* @decode_q_segment(%struct.strbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %11 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %5, align 8
  %13 = call %struct.strbuf* @xmalloc(i32 16)
  store %struct.strbuf* %13, %struct.strbuf** %7, align 8
  %14 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %15 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @strbuf_init(%struct.strbuf* %14, i32 %17)
  br label %19

19:                                               ; preds = %57, %43, %2
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %5, align 8
  %22 = load i8, i8* %20, align 1
  %23 = sext i8 %22 to i32
  store i32 %23, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %61

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 61
  br i1 %27, label %28, label %50

28:                                               ; preds = %25
  %29 = load i8*, i8** %5, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 10
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34, %28
  br label %61

38:                                               ; preds = %34
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @hex2chr(i8* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @strbuf_addch(%struct.strbuf* %44, i32 %45)
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  store i8* %48, i8** %5, align 8
  br label %19

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %25
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 95
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 32, i32* %6, align 4
  br label %57

57:                                               ; preds = %56, %53, %50
  %58 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @strbuf_addch(%struct.strbuf* %58, i32 %59)
  br label %19

61:                                               ; preds = %37, %19
  %62 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  ret %struct.strbuf* %62
}

declare dso_local %struct.strbuf* @xmalloc(i32) #1

declare dso_local i32 @strbuf_init(%struct.strbuf*, i32) #1

declare dso_local i32 @hex2chr(i8*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
