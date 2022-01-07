; ModuleID = '/home/carl/AnghaBench/git/extr_packfile.c_unlink_pack_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_packfile.c_unlink_pack_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i32 }

@unlink_pack_path.exts = internal global [5 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [6 x i8] c".pack\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".idx\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c".keep\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c".bitmap\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c".promisor\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@F_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unlink_pack_path(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.strbuf, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @strbuf_addstr(%struct.strbuf* %6, i8* %9)
  %11 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %14 = call i32 @strip_suffix_mem(i32 %12, i64* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %15 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %2
  %20 = call i32 @strbuf_addstr(%struct.strbuf* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %21 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @F_OK, align 4
  %24 = call i32 @access(i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = call i32 @strbuf_release(%struct.strbuf* %6)
  br label %50

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %2
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %45, %29
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @unlink_pack_path.exts, i64 0, i64 0))
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @strbuf_setlen(%struct.strbuf* %6, i64 %35)
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [5 x i8*], [5 x i8*]* @unlink_pack_path.exts, i64 0, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strbuf_addstr(%struct.strbuf* %6, i8* %40)
  %42 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @unlink(i32 %43)
  br label %45

45:                                               ; preds = %34
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %30

48:                                               ; preds = %30
  %49 = call i32 @strbuf_release(%struct.strbuf* %6)
  br label %50

50:                                               ; preds = %48, %26
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @strip_suffix_mem(i32, i64*, i8*) #2

declare dso_local i32 @access(i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @ARRAY_SIZE(i8**) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i64) #2

declare dso_local i32 @unlink(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
