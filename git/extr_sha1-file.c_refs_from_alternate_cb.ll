; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_refs_from_alternate_cb.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_refs_from_alternate_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i32 }
%struct.object_directory = type { i32 }
%struct.alternate_refs_data = type { i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"/objects\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"/refs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_directory*, i8*)* @refs_from_alternate_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @refs_from_alternate_cb(%struct.object_directory* %0, i8* %1) #0 {
  %3 = alloca %struct.object_directory*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.strbuf, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.alternate_refs_data*, align 8
  store %struct.object_directory* %0, %struct.object_directory** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.alternate_refs_data*
  store %struct.alternate_refs_data* %10, %struct.alternate_refs_data** %7, align 8
  %11 = load %struct.object_directory*, %struct.object_directory** %3, align 8
  %12 = getelementptr inbounds %struct.object_directory, %struct.object_directory* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @strbuf_realpath(%struct.strbuf* %5, i32 %13, i32 0)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %42

17:                                               ; preds = %2
  %18 = call i32 @strbuf_strip_suffix(%struct.strbuf* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  br label %42

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  %24 = call i32 @strbuf_addstr(%struct.strbuf* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @is_directory(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  br label %42

30:                                               ; preds = %21
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @strbuf_setlen(%struct.strbuf* %5, i64 %31)
  %33 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.alternate_refs_data*, %struct.alternate_refs_data** %7, align 8
  %36 = getelementptr inbounds %struct.alternate_refs_data, %struct.alternate_refs_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.alternate_refs_data*, %struct.alternate_refs_data** %7, align 8
  %39 = getelementptr inbounds %struct.alternate_refs_data, %struct.alternate_refs_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @read_alternate_refs(i32 %34, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %30, %29, %20, %16
  %43 = call i32 @strbuf_release(%struct.strbuf* %5)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_realpath(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @strbuf_strip_suffix(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @is_directory(i32) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #2

declare dso_local i32 @read_alternate_refs(i32, i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
