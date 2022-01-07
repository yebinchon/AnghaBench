; ModuleID = '/home/carl/AnghaBench/git/extr_tmp-objdir.c_migrate_paths.c'
source_filename = "/home/carl/AnghaBench/git/extr_tmp-objdir.c_migrate_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.strbuf = type { i64, i32 }

@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 8
@pack_copy_cmp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, %struct.strbuf*)* @migrate_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @migrate_paths(%struct.strbuf* %0, %struct.strbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.string_list, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  %12 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %13 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %16 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = bitcast %struct.string_list* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 24, i1 false)
  store i32 0, i32* %10, align 4
  %19 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @read_dir_paths(%struct.string_list* %8, i32 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %65

25:                                               ; preds = %2
  %26 = load i32, i32* @pack_copy_cmp, align 4
  %27 = getelementptr inbounds %struct.string_list, %struct.string_list* %8, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  %28 = call i32 @string_list_sort(%struct.string_list* %8)
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %59, %25
  %30 = load i32, i32* %9, align 4
  %31 = getelementptr inbounds %struct.string_list, %struct.string_list* %8, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %62

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.string_list, %struct.string_list* %8, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %11, align 8
  %42 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @strbuf_addf(%struct.strbuf* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @strbuf_addf(%struct.strbuf* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %46)
  %48 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %49 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %50 = call i32 @migrate_one(%struct.strbuf* %48, %struct.strbuf* %49)
  %51 = load i32, i32* %10, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @strbuf_setlen(%struct.strbuf* %53, i64 %54)
  %56 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @strbuf_setlen(%struct.strbuf* %56, i64 %57)
  br label %59

59:                                               ; preds = %34
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %29

62:                                               ; preds = %29
  %63 = call i32 @string_list_clear(%struct.string_list* %8, i32 0)
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %24
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @read_dir_paths(%struct.string_list*, i32) #2

declare dso_local i32 @string_list_sort(%struct.string_list*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*) #2

declare dso_local i32 @migrate_one(%struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
