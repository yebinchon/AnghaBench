; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-engine.c_parse_mc_store.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-engine.c_parse_mc_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_mc_store(i32 %0, %struct.connection* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.connection*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.connection* %1, %struct.connection** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  br label %17

17:                                               ; preds = %22, %4
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 32
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %8, align 8
  br label %17

25:                                               ; preds = %17
  %26 = load i8*, i8** %8, align 8
  store i8* %26, i8** %10, align 8
  br label %27

27:                                               ; preds = %32, %25
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp sgt i32 %30, 32
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %8, align 8
  br label %27

35:                                               ; preds = %27
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load i8*, i8** %8, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 32
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %35
  store i32 -1, i32* %5, align 4
  br label %107

50:                                               ; preds = %44
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @strtol(i8* %51, i8** %11, i32 10)
  store i32 %52, i32* %13, align 4
  %53 = load i8*, i8** %11, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = icmp eq i8* %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 -1, i32* %5, align 4
  br label %107

57:                                               ; preds = %50
  %58 = load i8*, i8** %11, align 8
  store i8* %58, i8** %8, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @strtol(i8* %59, i8** %11, i32 10)
  store i32 %60, i32* %14, align 4
  %61 = load i8*, i8** %11, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = icmp eq i8* %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 -1, i32* %5, align 4
  br label %107

65:                                               ; preds = %57
  %66 = load i8*, i8** %11, align 8
  store i8* %66, i8** %8, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @strtol(i8* %67, i8** %11, i32 10)
  store i32 %68, i32* %15, align 4
  %69 = load i8*, i8** %11, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = icmp eq i8* %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i32 -1, i32* %5, align 4
  br label %107

73:                                               ; preds = %65
  %74 = load i8*, i8** %11, align 8
  store i8* %74, i8** %8, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @strtol(i8* %75, i8** %11, i32 10)
  store i32 %76, i32* %16, align 4
  %77 = load i8*, i8** %11, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = icmp eq i8* %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  store i32 0, i32* %16, align 4
  br label %83

81:                                               ; preds = %73
  %82 = load i8*, i8** %11, align 8
  store i8* %82, i8** %8, align 8
  br label %83

83:                                               ; preds = %81, %80
  br label %84

84:                                               ; preds = %89, %83
  %85 = load i8*, i8** %8, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 32
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i8*, i8** %8, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %8, align 8
  br label %84

92:                                               ; preds = %84
  %93 = load i8*, i8** %8, align 8
  %94 = load i8, i8* %93, align 1
  %95 = icmp ne i8 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 -1, i32* %5, align 4
  br label %107

97:                                               ; preds = %92
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.connection*, %struct.connection** %7, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @exec_mc_store(i32 %98, %struct.connection* %99, i8* %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105)
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %97, %96, %72, %64, %56, %49
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @exec_mc_store(i32, %struct.connection*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
