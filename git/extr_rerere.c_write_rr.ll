; ModuleID = '/home/carl/AnghaBench/git/extr_rerere.c_write_rr.c'
source_filename = "/home/carl/AnghaBench/git/extr_rerere.c_write_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.rerere_id = type { i64 }
%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.rerere_id* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@RERERE_RESOLVED = common dso_local global %struct.rerere_id* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"%s.%d\09%s%c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s\09%s%c\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"unable to write rerere record\00", align 1
@write_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.string_list*, i32)* @write_rr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_rr(%struct.string_list* %0, i32 %1) #0 {
  %3 = alloca %struct.string_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca %struct.rerere_id*, align 8
  store %struct.string_list* %0, %struct.string_list** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %91, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.string_list*, %struct.string_list** %3, align 8
  %11 = getelementptr inbounds %struct.string_list, %struct.string_list* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %94

14:                                               ; preds = %8
  %15 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %16 = load %struct.string_list*, %struct.string_list** %3, align 8
  %17 = getelementptr inbounds %struct.string_list, %struct.string_list* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.rerere_id*, %struct.rerere_id** %22, align 8
  %24 = load %struct.rerere_id*, %struct.rerere_id** @RERERE_RESOLVED, align 8
  %25 = icmp ne %struct.rerere_id* %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.string_list*, %struct.string_list** %3, align 8
  %29 = getelementptr inbounds %struct.string_list, %struct.string_list* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load %struct.rerere_id*, %struct.rerere_id** %34, align 8
  store %struct.rerere_id* %35, %struct.rerere_id** %7, align 8
  %36 = load %struct.rerere_id*, %struct.rerere_id** %7, align 8
  %37 = icmp ne %struct.rerere_id* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %14
  br label %91

39:                                               ; preds = %14
  %40 = load %struct.rerere_id*, %struct.rerere_id** %7, align 8
  %41 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.rerere_id*, %struct.rerere_id** %7, align 8
  %47 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 0, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %39
  %51 = load %struct.rerere_id*, %struct.rerere_id** %7, align 8
  %52 = call i32 @rerere_id_hex(%struct.rerere_id* %51)
  %53 = load %struct.rerere_id*, %struct.rerere_id** %7, align 8
  %54 = getelementptr inbounds %struct.rerere_id, %struct.rerere_id* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.string_list*, %struct.string_list** %3, align 8
  %57 = getelementptr inbounds %struct.string_list, %struct.string_list* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (%struct.strbuf*, i8*, i32, i64, i32, ...) @strbuf_addf(%struct.strbuf* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %52, i64 %55, i32 %63, i32 0)
  br label %78

65:                                               ; preds = %39
  %66 = load %struct.rerere_id*, %struct.rerere_id** %7, align 8
  %67 = call i32 @rerere_id_hex(%struct.rerere_id* %66)
  %68 = load %struct.string_list*, %struct.string_list** %3, align 8
  %69 = getelementptr inbounds %struct.string_list, %struct.string_list* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = call i32 (%struct.strbuf*, i8*, i32, i64, i32, ...) @strbuf_addf(%struct.strbuf* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %67, i64 %76, i32 0)
  br label %78

78:                                               ; preds = %65, %50
  %79 = load i32, i32* %4, align 4
  %80 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @write_in_full(i32 %79, i32 %81, i32 %83)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %88 = call i32 @die(i32 %87)
  br label %89

89:                                               ; preds = %86, %78
  %90 = call i32 @strbuf_release(%struct.strbuf* %6)
  br label %91

91:                                               ; preds = %89, %38
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %8

94:                                               ; preds = %8
  %95 = call i64 @commit_lock_file(i32* @write_lock)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %99 = call i32 @die(i32 %98)
  br label %100

100:                                              ; preds = %97, %94
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i64, i32, ...) #2

declare dso_local i32 @rerere_id_hex(%struct.rerere_id*) #2

declare dso_local i64 @write_in_full(i32, i32, i32) #2

declare dso_local i32 @die(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i64 @commit_lock_file(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
