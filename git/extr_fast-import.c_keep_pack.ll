; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_keep_pack.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_keep_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.TYPE_2__ = type { i8*, i32 }

@keep_pack.keep_msg = internal global i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [12 x i8] c"fast-import\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@pack_data = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"keep\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"cannot create keep file\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to write keep file\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"pack\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"cannot store pack file\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"idx\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"cannot store index file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @keep_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @keep_pack(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.strbuf, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pack_data, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @odb_pack_name(%struct.strbuf* %3, i32 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %10 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @odb_pack_keep(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @die_errno(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %1
  %18 = load i32, i32* %4, align 4
  %19 = load i8*, i8** @keep_pack.keep_msg, align 8
  %20 = load i8*, i8** @keep_pack.keep_msg, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = call i32 @write_or_die(i32 %18, i8* %19, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @close(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = call i32 @die_errno(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %17
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pack_data, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @odb_pack_name(%struct.strbuf* %3, i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pack_data, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @finalize_object_file(i8* %35, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = call i32 @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %28
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pack_data, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @odb_pack_name(%struct.strbuf* %3, i32 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %47 = load i8*, i8** %2, align 8
  %48 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @finalize_object_file(i8* %47, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = call i32 @die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %42
  %55 = load i8*, i8** %2, align 8
  %56 = call i32 @free(i8* %55)
  %57 = call i8* @strbuf_detach(%struct.strbuf* %3, i32* null)
  ret i8* %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @odb_pack_name(%struct.strbuf*, i32, i8*) #2

declare dso_local i32 @odb_pack_keep(i32) #2

declare dso_local i32 @die_errno(i8*) #2

declare dso_local i32 @write_or_die(i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @close(i32) #2

declare dso_local i64 @finalize_object_file(i8*, i32) #2

declare dso_local i32 @die(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
