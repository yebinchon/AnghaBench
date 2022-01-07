; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_report_collided_checkout.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_report_collided_checkout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.index_state = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i32, i32 }

@STRING_LIST_INIT_NODUP = common dso_local global %struct.string_list zeroinitializer, align 8
@CE_MATCHED = common dso_local global i32 0, align 4
@fspathcmp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [163 x i8] c"the following paths have collided (e.g. case-sensitive paths\0Aon a case-insensitive filesystem) and only one from the same\0Acolliding group is in the working tree:\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"  '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.index_state*)* @report_collided_checkout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_collided_checkout(%struct.index_state* %0) #0 {
  %2 = alloca %struct.index_state*, align 8
  %3 = alloca %struct.string_list, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %2, align 8
  %6 = bitcast %struct.string_list* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_NODUP to i8*), i64 24, i1 false)
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %39, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.index_state*, %struct.index_state** %2, align 8
  %10 = getelementptr inbounds %struct.index_state, %struct.index_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %7
  %14 = load %struct.index_state*, %struct.index_state** %2, align 8
  %15 = getelementptr inbounds %struct.index_state, %struct.index_state* %14, i32 0, i32 1
  %16 = load %struct.cache_entry**, %struct.cache_entry*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %16, i64 %18
  %20 = load %struct.cache_entry*, %struct.cache_entry** %19, align 8
  store %struct.cache_entry* %20, %struct.cache_entry** %5, align 8
  %21 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %22 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CE_MATCHED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %13
  br label %39

28:                                               ; preds = %13
  %29 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %30 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @string_list_append(%struct.string_list* %3, i32 %31)
  %33 = load i32, i32* @CE_MATCHED, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %36 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %28, %27
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %7

42:                                               ; preds = %7
  %43 = load i32, i32* @fspathcmp, align 4
  %44 = getelementptr inbounds %struct.string_list, %struct.string_list* %3, i32 0, i32 2
  store i32 %43, i32* %44, align 8
  %45 = call i32 @string_list_sort(%struct.string_list* %3)
  %46 = getelementptr inbounds %struct.string_list, %struct.string_list* %3, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %42
  %50 = call i32 @_(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str, i64 0, i64 0))
  %51 = call i32 @warning(i32 %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %67, %49
  %53 = load i32, i32* %4, align 4
  %54 = getelementptr inbounds %struct.string_list, %struct.string_list* %3, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load i32, i32* @stderr, align 4
  %59 = getelementptr inbounds %struct.string_list, %struct.string_list* %3, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %57
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %52

70:                                               ; preds = %52
  br label %71

71:                                               ; preds = %70, %42
  %72 = call i32 @string_list_clear(%struct.string_list* %3, i32 0)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @string_list_append(%struct.string_list*, i32) #2

declare dso_local i32 @string_list_sort(%struct.string_list*) #2

declare dso_local i32 @warning(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
