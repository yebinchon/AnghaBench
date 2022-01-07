; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-dump-split-index.c_cmd__dump_split_index.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-dump-split-index.c_cmd__dump_split_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.cache_entry**, %struct.split_index*, i32 }
%struct.cache_entry = type { i32, i8*, i32 }
%struct.split_index = type { i64, i64, i32 }

@the_index = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"own %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"not a split index\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"base %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%06o %s %d\09%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"replacements:\00", align 1
@show_bit = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"\0Adeletions:\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd__dump_split_index(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.split_index*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cache_entry*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 1
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @do_read_index(%struct.TYPE_3__* @the_index, i8* %11, i32 1)
  %13 = call i8* @oid_to_hex(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @the_index, i32 0, i32 3))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load %struct.split_index*, %struct.split_index** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @the_index, i32 0, i32 2), align 8
  store %struct.split_index* %15, %struct.split_index** %6, align 8
  %16 = load %struct.split_index*, %struct.split_index** %6, align 8
  %17 = icmp ne %struct.split_index* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %76

20:                                               ; preds = %2
  %21 = load %struct.split_index*, %struct.split_index** %6, align 8
  %22 = getelementptr inbounds %struct.split_index, %struct.split_index* %21, i32 0, i32 2
  %23 = call i8* @oid_to_hex(i32* %22)
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %47, %20
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @the_index, i32 0, i32 0), align 8
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %25
  %30 = load %struct.cache_entry**, %struct.cache_entry*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @the_index, i32 0, i32 1), align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %30, i64 %32
  %34 = load %struct.cache_entry*, %struct.cache_entry** %33, align 8
  store %struct.cache_entry* %34, %struct.cache_entry** %8, align 8
  %35 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %36 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %39 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %38, i32 0, i32 2
  %40 = call i8* @oid_to_hex(i32* %39)
  %41 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %42 = call i32 @ce_stage(%struct.cache_entry* %41)
  %43 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %44 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %37, i8* %40, i32 %42, i8* %45)
  br label %47

47:                                               ; preds = %29
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %25

50:                                               ; preds = %25
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %52 = load %struct.split_index*, %struct.split_index** %6, align 8
  %53 = getelementptr inbounds %struct.split_index, %struct.split_index* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.split_index*, %struct.split_index** %6, align 8
  %58 = getelementptr inbounds %struct.split_index, %struct.split_index* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @show_bit, align 4
  %61 = call i32 @ewah_each_bit(i64 %59, i32 %60, i32* null)
  br label %62

62:                                               ; preds = %56, %50
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %64 = load %struct.split_index*, %struct.split_index** %6, align 8
  %65 = getelementptr inbounds %struct.split_index, %struct.split_index* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load %struct.split_index*, %struct.split_index** %6, align 8
  %70 = getelementptr inbounds %struct.split_index, %struct.split_index* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @show_bit, align 4
  %73 = call i32 @ewah_each_bit(i64 %71, i32 %72, i32* null)
  br label %74

74:                                               ; preds = %68, %62
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %18
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @do_read_index(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @oid_to_hex(i32*) #1

declare dso_local i32 @ce_stage(%struct.cache_entry*) #1

declare dso_local i32 @ewah_each_bit(i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
