; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_link_alt_odb_entries.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_link_alt_odb_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.repository = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [55 x i8] c"%s: ignoring alternate object stores, nesting too deep\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"unable to normalize object directory: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, i8*, i32, i8*, i32)* @link_alt_odb_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_alt_odb_entries(%struct.repository* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.repository*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.strbuf, align 4
  %12 = alloca %struct.strbuf, align 4
  store %struct.repository* %0, %struct.repository** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %14 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load i8*, i8** %7, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %5
  br label %70

22:                                               ; preds = %17
  %23 = load i32, i32* %10, align 4
  %24 = icmp sgt i32 %23, 5
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @error(i32 %26, i8* %27)
  br label %70

29:                                               ; preds = %22
  %30 = load %struct.repository*, %struct.repository** %6, align 8
  %31 = getelementptr inbounds %struct.repository, %struct.repository* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @strbuf_add_absolute_path(%struct.strbuf* %11, i32 %36)
  %38 = call i64 @strbuf_normalize_path(%struct.strbuf* %11)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %29
  %41 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %42 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @die(i32 %41, i32 %43)
  br label %45

45:                                               ; preds = %40, %29
  br label %46

46:                                               ; preds = %58, %57, %45
  %47 = load i8*, i8** %7, align 8
  %48 = load i8, i8* %47, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i8* @parse_alt_odb_entry(i8* %51, i32 %52, %struct.strbuf* %12)
  store i8* %53, i8** %7, align 8
  %54 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  br label %46

58:                                               ; preds = %50
  %59 = load %struct.repository*, %struct.repository** %6, align 8
  %60 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @link_alt_odb_entry(%struct.repository* %59, i32 %61, i8* %62, i32 %63, i32 %65)
  br label %46

67:                                               ; preds = %46
  %68 = call i32 @strbuf_release(%struct.strbuf* %12)
  %69 = call i32 @strbuf_release(%struct.strbuf* %11)
  br label %70

70:                                               ; preds = %67, %25, %21
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @error(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @strbuf_add_absolute_path(%struct.strbuf*, i32) #2

declare dso_local i64 @strbuf_normalize_path(%struct.strbuf*) #2

declare dso_local i32 @die(i32, i32) #2

declare dso_local i8* @parse_alt_odb_entry(i8*, i32, %struct.strbuf*) #2

declare dso_local i32 @link_alt_odb_entry(%struct.repository*, i32, i8*, i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
