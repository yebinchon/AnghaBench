; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_read_oneliner.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_read_oneliner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i8* }

@.str = private unnamed_addr constant [20 x i8] c"could not read '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, i8*, i32)* @read_oneliner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_oneliner(%struct.strbuf* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %10 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @file_exists(i8* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %89

16:                                               ; preds = %3
  %17 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @strbuf_read_file(%struct.strbuf* %17, i8* %18, i32 0)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @warning_errno(i32 %22, i8* %23)
  store i32 0, i32* %4, align 4
  br label %89

25:                                               ; preds = %16
  %26 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %27 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %78

31:                                               ; preds = %25
  %32 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %33 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %36 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %34, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 10
  br i1 %43, label %44, label %78

44:                                               ; preds = %31
  %45 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %46 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* %8, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %44
  %52 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %53 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %56 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %54, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 13
  br i1 %63, label %64, label %69

64:                                               ; preds = %51
  %65 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %66 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %64, %51, %44
  %70 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %71 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %74 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %72, i64 %76
  store i8 0, i8* %77, align 1
  br label %78

78:                                               ; preds = %69, %31, %25
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %83 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %89

88:                                               ; preds = %81, %78
  store i32 1, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %87, %21, %15
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @file_exists(i8*) #1

declare dso_local i64 @strbuf_read_file(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @warning_errno(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
