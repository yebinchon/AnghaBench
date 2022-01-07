; ModuleID = '/home/carl/AnghaBench/git/extr_unpack-trees.c_display_error_msgs.c'
source_filename = "/home/carl/AnghaBench/git/extr_unpack-trees.c_display_error_msgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.unpack_trees_options = type { %struct.string_list* }
%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NB_UNPACK_TREES_ERROR_TYPES = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Aborting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unpack_trees_options*)* @display_error_msgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_error_msgs(%struct.unpack_trees_options* %0) #0 {
  %2 = alloca %struct.unpack_trees_options*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.string_list*, align 8
  %7 = alloca %struct.strbuf, align 4
  store %struct.unpack_trees_options* %0, %struct.unpack_trees_options** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %56, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @NB_UNPACK_TREES_ERROR_TYPES, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %59

12:                                               ; preds = %8
  %13 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %2, align 8
  %14 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %13, i32 0, i32 0
  %15 = load %struct.string_list*, %struct.string_list** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.string_list, %struct.string_list* %15, i64 %17
  store %struct.string_list* %18, %struct.string_list** %6, align 8
  %19 = load %struct.string_list*, %struct.string_list** %6, align 8
  %20 = getelementptr inbounds %struct.string_list, %struct.string_list* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %12
  %24 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i32 1, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %41, %23
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.string_list*, %struct.string_list** %6, align 8
  %28 = getelementptr inbounds %struct.string_list, %struct.string_list* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = load %struct.string_list*, %struct.string_list** %6, align 8
  %33 = getelementptr inbounds %struct.string_list, %struct.string_list* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strbuf_addf(%struct.strbuf* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %31
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %25

44:                                               ; preds = %25
  %45 = load %struct.unpack_trees_options*, %struct.unpack_trees_options** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @ERRORMSG(%struct.unpack_trees_options* %45, i32 %46)
  %48 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @super_prefixed(i32 %49)
  %51 = call i32 @error(i32 %47, i32 %50)
  %52 = call i32 @strbuf_release(%struct.strbuf* %7)
  br label %53

53:                                               ; preds = %44, %12
  %54 = load %struct.string_list*, %struct.string_list** %6, align 8
  %55 = call i32 @string_list_clear(%struct.string_list* %54, i32 0)
  br label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %8

59:                                               ; preds = %8
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* @stderr, align 4
  %64 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %65 = call i32 @fprintf(i32 %63, i8* %64)
  br label %66

66:                                               ; preds = %62, %59
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @error(i32, i32) #2

declare dso_local i32 @ERRORMSG(%struct.unpack_trees_options*, i32) #2

declare dso_local i32 @super_prefixed(i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i8* @_(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
