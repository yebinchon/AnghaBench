; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_rest_is_empty.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_rest_is_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i8* }

@sign_off_header = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, i32)* @rest_is_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rest_is_empty(%struct.strbuf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %82, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %13 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %85

16:                                               ; preds = %10
  %17 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %18 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %24 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %25, %26
  %28 = call i8* @memchr(i8* %22, i8 signext 10, i32 %27)
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %16
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %34 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = ptrtoint i8* %32 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %7, align 4
  br label %44

40:                                               ; preds = %16
  %41 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %42 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %40, %31
  %45 = load i32, i32* @sign_off_header, align 4
  %46 = call i32 @strlen(i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %47, %48
  %50 = icmp sle i32 %46, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %44
  %52 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %53 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i32, i32* @sign_off_header, align 4
  %59 = call i64 @starts_with(i8* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %6, align 4
  br label %82

63:                                               ; preds = %51, %44
  br label %64

64:                                               ; preds = %80, %63
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %70 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = call i32 @isspace(i8 signext %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %86

80:                                               ; preds = %68
  br label %64

81:                                               ; preds = %64
  br label %82

82:                                               ; preds = %81, %61
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %10

85:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %79
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @starts_with(i8*, i32) #1

declare dso_local i32 @isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
