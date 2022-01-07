; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-ram.c_index_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-index-ram.c_index_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_entry = type { i32*, i32 }

@index_size = common dso_local global i32 0, align 4
@index_binary_data = common dso_local global i32* null, align 8
@index_offset = common dso_local global i64* null, align 8
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"(l,r) = (%d,%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"index_size = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"entry->key_len = %d, key_len = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Item found in index.\0A\00", align 1
@empty_index_entry = common dso_local global %struct.index_entry zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.index_entry* @index_get(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.index_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.index_entry*, align 8
  %10 = alloca %struct.index_entry*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %12 = load i32, i32* @index_size, align 4
  store i32 %12, i32* %7, align 4
  br label %13

13:                                               ; preds = %45, %2
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 %14, %15
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %46

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %19, %20
  %22 = ashr i32 %21, 1
  store i32 %22, i32* %8, align 4
  %23 = load i32*, i32** @index_binary_data, align 8
  %24 = load i64*, i64** @index_offset, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %23, i64 %28
  %30 = bitcast i32* %29 to %struct.index_entry*
  store %struct.index_entry* %30, %struct.index_entry** %9, align 8
  %31 = load %struct.index_entry*, %struct.index_entry** %9, align 8
  %32 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.index_entry*, %struct.index_entry** %9, align 8
  %35 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @mystrcmp(i32* %33, i32 %36, i8* %37, i32 %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %18
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %6, align 4
  br label %45

43:                                               ; preds = %18
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %43, %41
  br label %13

46:                                               ; preds = %13
  %47 = load i32, i32* @verbosity, align 4
  %48 = icmp sge i32 %47, 4
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32, i32* @stderr, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i32, i32* @stderr, align 4
  %55 = load i32, i32* @index_size, align 4
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %49, %46
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @index_size, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %103

63:                                               ; preds = %57
  %64 = load i32*, i32** @index_binary_data, align 8
  %65 = load i64*, i64** @index_offset, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32, i32* %64, i64 %69
  %71 = bitcast i32* %70 to %struct.index_entry*
  store %struct.index_entry* %71, %struct.index_entry** %10, align 8
  %72 = load %struct.index_entry*, %struct.index_entry** %10, align 8
  %73 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 (i32, i8*, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load i32, i32* @verbosity, align 4
  %78 = icmp sge i32 %77, 6
  br i1 %78, label %79, label %102

79:                                               ; preds = %63
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %96, %79
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.index_entry*, %struct.index_entry** %10, align 8
  %83 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %80
  %87 = load i32, i32* @stderr, align 4
  %88 = load %struct.index_entry*, %struct.index_entry** %10, align 8
  %89 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i8*, ...) @fprintf(i32 %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %86
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %80

99:                                               ; preds = %80
  %100 = load i32, i32* @stderr, align 4
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %63
  br label %103

103:                                              ; preds = %102, %57
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @index_size, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %121

107:                                              ; preds = %103
  %108 = load %struct.index_entry*, %struct.index_entry** %10, align 8
  %109 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.index_entry*, %struct.index_entry** %10, align 8
  %112 = getelementptr inbounds %struct.index_entry, %struct.index_entry* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i8*, i8** %4, align 8
  %115 = load i32, i32* %5, align 4
  %116 = call i64 @mystrcmp(i32* %110, i32 %113, i8* %114, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %107
  %119 = call i32 (i32, i8*, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %120 = load %struct.index_entry*, %struct.index_entry** %10, align 8
  store %struct.index_entry* %120, %struct.index_entry** %3, align 8
  br label %122

121:                                              ; preds = %107, %103
  store %struct.index_entry* @empty_index_entry, %struct.index_entry** %3, align 8
  br label %122

122:                                              ; preds = %121, %118
  %123 = load %struct.index_entry*, %struct.index_entry** %3, align 8
  ret %struct.index_entry* %123
}

declare dso_local i64 @mystrcmp(i32*, i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
