; ModuleID = '/home/carl/AnghaBench/git/extr_http-backend.c_get_info_packs.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-backend.c_get_info_packs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.packed_git = type { i64, i64, %struct.packed_git* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"P %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"text/plain; charset=utf-8\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i8*)* @get_info_packs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_info_packs(%struct.strbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca %struct.packed_git*, align 8
  %8 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = call i32 (...) @get_object_directory()
  %10 = call i64 @strlen(i32 %9)
  store i64 %10, i64* %5, align 8
  %11 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i64 0, i64* %8, align 8
  %12 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %13 = call i32 @select_getanyfile(%struct.strbuf* %12)
  %14 = load i32, i32* @the_repository, align 4
  %15 = call %struct.packed_git* @get_all_packs(i32 %14)
  store %struct.packed_git* %15, %struct.packed_git** %7, align 8
  br label %16

16:                                               ; preds = %28, %2
  %17 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %18 = icmp ne %struct.packed_git* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %21 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i64, i64* %8, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %8, align 8
  br label %27

27:                                               ; preds = %24, %19
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %30 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %29, i32 0, i32 2
  %31 = load %struct.packed_git*, %struct.packed_git** %30, align 8
  store %struct.packed_git* %31, %struct.packed_git** %7, align 8
  br label %16

32:                                               ; preds = %16
  %33 = load i64, i64* %8, align 8
  %34 = mul i64 %33, 53
  %35 = add i64 %34, 2
  %36 = call i32 @strbuf_grow(%struct.strbuf* %6, i64 %35)
  %37 = load i32, i32* @the_repository, align 4
  %38 = call %struct.packed_git* @get_all_packs(i32 %37)
  store %struct.packed_git* %38, %struct.packed_git** %7, align 8
  br label %39

39:                                               ; preds = %56, %32
  %40 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %41 = icmp ne %struct.packed_git* %40, null
  br i1 %41, label %42, label %60

42:                                               ; preds = %39
  %43 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %44 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %49 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = add i64 %50, %51
  %53 = add i64 %52, 6
  %54 = call i32 @strbuf_addf(%struct.strbuf* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %47, %42
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.packed_git*, %struct.packed_git** %7, align 8
  %58 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %57, i32 0, i32 2
  %59 = load %struct.packed_git*, %struct.packed_git** %58, align 8
  store %struct.packed_git* %59, %struct.packed_git** %7, align 8
  br label %39

60:                                               ; preds = %39
  %61 = call i32 @strbuf_addch(%struct.strbuf* %6, i8 signext 10)
  %62 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %63 = call i32 @hdr_nocache(%struct.strbuf* %62)
  %64 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %65 = call i32 @send_strbuf(%struct.strbuf* %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %struct.strbuf* %6)
  %66 = call i32 @strbuf_release(%struct.strbuf* %6)
  ret void
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @get_object_directory(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @select_getanyfile(%struct.strbuf*) #1

declare dso_local %struct.packed_git* @get_all_packs(i32) #1

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i64) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i64) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @hdr_nocache(%struct.strbuf*) #1

declare dso_local i32 @send_strbuf(%struct.strbuf*, i8*, %struct.strbuf*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
