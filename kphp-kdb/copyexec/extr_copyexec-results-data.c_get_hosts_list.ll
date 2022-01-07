; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-data.c_get_hosts_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-data.c_get_hosts_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i32 }
%struct.pair_hostid_result = type { i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HOSTS = common dso_local global %struct.TYPE_5__** null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"p = %p, z + l = %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_hosts_list(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pair_hostid_result*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.TYPE_4__* @get_transaction_f(i64 %17, i32 %18, i32 0)
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %10, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %21 = icmp eq %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %129

23:                                               ; preds = %4
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.pair_hostid_result* @get_pairs_hostid_result(i32* %11, i64 %24, i32 %27)
  store %struct.pair_hostid_result* %28, %struct.pair_hostid_result** %12, align 8
  %29 = load %struct.pair_hostid_result*, %struct.pair_hostid_result** %12, align 8
  %30 = icmp eq %struct.pair_hostid_result* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i8* null, i8** %5, align 8
  br label %129

32:                                               ; preds = %23
  %33 = load %struct.pair_hostid_result*, %struct.pair_hostid_result** %12, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @filter_pairs_hostid_result(%struct.pair_hostid_result* %33, i32* %11, i32 %34, i32 %35)
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  %40 = load %struct.pair_hostid_result*, %struct.pair_hostid_result** %12, align 8
  %41 = call i32 @free(%struct.pair_hostid_result* %40)
  %42 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %42, i8** %5, align 8
  br label %129

43:                                               ; preds = %32
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %66, %43
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %44
  %49 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @HOSTS, align 8
  %50 = load %struct.pair_hostid_result*, %struct.pair_hostid_result** %12, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.pair_hostid_result, %struct.pair_hostid_result* %50, i64 %52
  %54 = getelementptr inbounds %struct.pair_hostid_result, %struct.pair_hostid_result* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %49, i64 %55
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @strlen(i8* %59)
  %61 = add nsw i64 %60, 1
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %48
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %13, align 4
  br label %44

69:                                               ; preds = %44
  %70 = load i32, i32* %14, align 4
  %71 = call i8* @malloc(i32 %70)
  store i8* %71, i8** %15, align 8
  %72 = load i8*, i8** %15, align 8
  store i8* %72, i8** %16, align 8
  %73 = load i8*, i8** %15, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load %struct.pair_hostid_result*, %struct.pair_hostid_result** %12, align 8
  %77 = call i32 @free(%struct.pair_hostid_result* %76)
  store i8* null, i8** %5, align 8
  br label %129

78:                                               ; preds = %69
  store i32 0, i32* %13, align 4
  br label %79

79:                                               ; preds = %107, %78
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %110

83:                                               ; preds = %79
  %84 = load i32, i32* %13, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i8*, i8** %16, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %16, align 8
  store i8 44, i8* %87, align 1
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i8*, i8** %16, align 8
  %91 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @HOSTS, align 8
  %92 = load %struct.pair_hostid_result*, %struct.pair_hostid_result** %12, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.pair_hostid_result, %struct.pair_hostid_result* %92, i64 %94
  %96 = getelementptr inbounds %struct.pair_hostid_result, %struct.pair_hostid_result* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %91, i64 %97
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @strcpy(i8* %90, i8* %101)
  %103 = load i8*, i8** %16, align 8
  %104 = call i64 @strlen(i8* %103)
  %105 = load i8*, i8** %16, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 %104
  store i8* %106, i8** %16, align 8
  br label %107

107:                                              ; preds = %89
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  br label %79

110:                                              ; preds = %79
  %111 = load i8*, i8** %16, align 8
  %112 = load i8*, i8** %15, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %111, i8* %115)
  %117 = load i8*, i8** %16, align 8
  %118 = load i8*, i8** %15, align 8
  %119 = load i32, i32* %14, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = getelementptr inbounds i8, i8* %121, i64 -1
  %123 = icmp eq i8* %117, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 @assert(i32 %124)
  %126 = load %struct.pair_hostid_result*, %struct.pair_hostid_result** %12, align 8
  %127 = call i32 @free(%struct.pair_hostid_result* %126)
  %128 = load i8*, i8** %15, align 8
  store i8* %128, i8** %5, align 8
  br label %129

129:                                              ; preds = %110, %75, %39, %31, %22
  %130 = load i8*, i8** %5, align 8
  ret i8* %130
}

declare dso_local %struct.TYPE_4__* @get_transaction_f(i64, i32, i32) #1

declare dso_local %struct.pair_hostid_result* @get_pairs_hostid_result(i32*, i64, i32) #1

declare dso_local i32 @filter_pairs_hostid_result(%struct.pair_hostid_result*, i32*, i32, i32) #1

declare dso_local i32 @free(%struct.pair_hostid_result*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @vkprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
