; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-engine.c_do_assign_max_multiple_hash.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-engine.c_do_assign_max_multiple_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.hashset_ll = type { i32 }

@value_buff = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%llx\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"u = %llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_assign_max_multiple_hash(%struct.connection* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.connection*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hashset_ll, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i8*, i8** @value_buff, align 8
  store i8* %18, i8** %10, align 8
  %19 = load %struct.connection*, %struct.connection** %6, align 8
  %20 = getelementptr inbounds %struct.connection, %struct.connection* %19, i32 0, i32 0
  %21 = load i8*, i8** %10, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @read_in(i32* %20, i8* %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i8*, i8** %10, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8 0, i8* %31, align 1
  store i32 1, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %48, %4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load i8*, i8** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 44
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %44, %36
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %32

51:                                               ; preds = %32
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %52, 10
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 10, i32* %12, align 4
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @hashset_ll_init(%struct.hashset_ll* %13, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %105

60:                                               ; preds = %55
  %61 = load i8*, i8** %10, align 8
  store i8* %61, i8** %14, align 8
  br label %62

62:                                               ; preds = %96, %60
  %63 = load i8*, i8** %14, align 8
  %64 = load i8, i8* %63, align 1
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %66, label %99

66:                                               ; preds = %62
  %67 = load i8*, i8** %14, align 8
  %68 = call i8* @strchr(i8* %67, i8 signext 44)
  store i8* %68, i8** %15, align 8
  %69 = load i8*, i8** %15, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i8*, i8** %15, align 8
  store i8 0, i8* %72, align 1
  br label %73

73:                                               ; preds = %71, %66
  %74 = load i8*, i8** %14, align 8
  %75 = call i32 @sscanf(i8* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64* %16)
  %76 = icmp ne i32 %75, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %99

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.hashset_ll, %struct.hashset_ll* %13, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %99

84:                                               ; preds = %78
  %85 = load i64, i64* %16, align 8
  %86 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %85)
  %87 = load i64, i64* %16, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i64, i64* %16, align 8
  %91 = call i32 @hashset_ll_insert(%struct.hashset_ll* %13, i64 %90)
  br label %92

92:                                               ; preds = %89, %84
  %93 = load i8*, i8** %15, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %99

96:                                               ; preds = %92
  %97 = load i8*, i8** %15, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  store i8* %98, i8** %14, align 8
  br label %62

99:                                               ; preds = %95, %83, %77, %62
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @do_assign_max_rate_using_hashset(%struct.hashset_ll* %13, i32 %100, i32 %101)
  store i32 %102, i32* %17, align 4
  %103 = call i32 @hashset_ll_free(%struct.hashset_ll* %13)
  %104 = load i32, i32* %17, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %99, %59
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read_in(i32*, i8*, i32) #1

declare dso_local i32 @hashset_ll_init(%struct.hashset_ll*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i32 @vkprintf(i32, i8*, i64) #1

declare dso_local i32 @hashset_ll_insert(%struct.hashset_ll*, i64) #1

declare dso_local i32 @do_assign_max_rate_using_hashset(%struct.hashset_ll*, i32, i32) #1

declare dso_local i32 @hashset_ll_free(%struct.hashset_ll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
