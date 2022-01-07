; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_populate_gitlink.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_populate_gitlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.diff_filespec = type { i32, i32*, i32, i32, i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"-dirty\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Subproject commit %s%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.diff_filespec*, i32)* @diff_populate_gitlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_populate_gitlink(%struct.diff_filespec* %0, i32 %1) #0 {
  %3 = alloca %struct.diff_filespec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.strbuf, align 4
  %6 = alloca i8*, align 8
  store %struct.diff_filespec* %0, %struct.diff_filespec** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %8 = load %struct.diff_filespec*, %struct.diff_filespec** %3, align 8
  %9 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %13

13:                                               ; preds = %12, %2
  %14 = load %struct.diff_filespec*, %struct.diff_filespec** %3, align 8
  %15 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %14, i32 0, i32 3
  %16 = call i32 @oid_to_hex(i32* %15)
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @strbuf_addf(%struct.strbuf* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %16, i8* %17)
  %19 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.diff_filespec*, %struct.diff_filespec** %3, align 8
  %22 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %13
  %26 = load %struct.diff_filespec*, %struct.diff_filespec** %3, align 8
  %27 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = call i32 @strbuf_release(%struct.strbuf* %5)
  br label %35

29:                                               ; preds = %13
  %30 = call i32* @strbuf_detach(%struct.strbuf* %5, i32* null)
  %31 = load %struct.diff_filespec*, %struct.diff_filespec** %3, align 8
  %32 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = load %struct.diff_filespec*, %struct.diff_filespec** %3, align 8
  %34 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  br label %35

35:                                               ; preds = %29, %25
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i8*) #2

declare dso_local i32 @oid_to_hex(i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32* @strbuf_detach(%struct.strbuf*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
