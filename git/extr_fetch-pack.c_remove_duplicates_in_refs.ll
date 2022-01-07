; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-pack.c_remove_duplicates_in_refs.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-pack.c_remove_duplicates_in_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.ref = type { i32 }
%struct.string_list_item = type { %struct.ref* }

@STRING_LIST_INIT_NODUP = common dso_local global %struct.string_list zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref**, i32)* @remove_duplicates_in_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_duplicates_in_refs(%struct.ref** %0, i32 %1) #0 {
  %3 = alloca %struct.ref**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.string_list, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.string_list_item*, align 8
  store %struct.ref** %0, %struct.ref*** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = bitcast %struct.string_list* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_NODUP to i8*), i64 4, i1 false)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %52, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %55

14:                                               ; preds = %10
  %15 = load %struct.ref**, %struct.ref*** %3, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ref*, %struct.ref** %15, i64 %17
  %19 = load %struct.ref*, %struct.ref** %18, align 8
  %20 = getelementptr inbounds %struct.ref, %struct.ref* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.string_list_item* @string_list_insert(%struct.string_list* %5, i32 %21)
  store %struct.string_list_item* %22, %struct.string_list_item** %8, align 8
  %23 = load %struct.string_list_item*, %struct.string_list_item** %8, align 8
  %24 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %23, i32 0, i32 0
  %25 = load %struct.ref*, %struct.ref** %24, align 8
  %26 = icmp ne %struct.ref* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  br label %52

28:                                               ; preds = %14
  %29 = load %struct.ref**, %struct.ref*** %3, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ref*, %struct.ref** %29, i64 %31
  %33 = load %struct.ref*, %struct.ref** %32, align 8
  %34 = load %struct.string_list_item*, %struct.string_list_item** %8, align 8
  %35 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %34, i32 0, i32 0
  store %struct.ref* %33, %struct.ref** %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %28
  %40 = load %struct.ref**, %struct.ref*** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ref*, %struct.ref** %40, i64 %42
  %44 = load %struct.ref*, %struct.ref** %43, align 8
  %45 = load %struct.ref**, %struct.ref*** %3, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ref*, %struct.ref** %45, i64 %47
  store %struct.ref* %44, %struct.ref** %48, align 8
  br label %49

49:                                               ; preds = %39, %28
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %49, %27
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %10

55:                                               ; preds = %10
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %66, %55
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load %struct.ref**, %struct.ref*** %3, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.ref*, %struct.ref** %62, i64 %64
  store %struct.ref* null, %struct.ref** %65, align 8
  br label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %57

69:                                               ; preds = %57
  %70 = call i32 @string_list_clear(%struct.string_list* %5, i32 0)
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.string_list_item* @string_list_insert(%struct.string_list*, i32) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
