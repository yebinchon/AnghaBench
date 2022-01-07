; ModuleID = '/home/carl/AnghaBench/git/extr_userdiff.c_userdiff_get_textconv.c'
source_filename = "/home/carl/AnghaBench/git/extr_userdiff.c_userdiff_get_textconv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.repository = type { i32 }
%struct.userdiff_driver = type { %struct.notes_cache*, i32, i32, i64 }
%struct.notes_cache = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [12 x i8] c"textconv/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.userdiff_driver* @userdiff_get_textconv(%struct.repository* %0, %struct.userdiff_driver* %1) #0 {
  %3 = alloca %struct.userdiff_driver*, align 8
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.userdiff_driver*, align 8
  %6 = alloca %struct.notes_cache*, align 8
  %7 = alloca %struct.strbuf, align 4
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.userdiff_driver* %1, %struct.userdiff_driver** %5, align 8
  %8 = load %struct.userdiff_driver*, %struct.userdiff_driver** %5, align 8
  %9 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.userdiff_driver* null, %struct.userdiff_driver** %3, align 8
  br label %44

13:                                               ; preds = %2
  %14 = load %struct.userdiff_driver*, %struct.userdiff_driver** %5, align 8
  %15 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %13
  %19 = load %struct.userdiff_driver*, %struct.userdiff_driver** %5, align 8
  %20 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %19, i32 0, i32 0
  %21 = load %struct.notes_cache*, %struct.notes_cache** %20, align 8
  %22 = icmp ne %struct.notes_cache* %21, null
  br i1 %22, label %42, label %23

23:                                               ; preds = %18
  %24 = call %struct.notes_cache* @xmalloc(i32 4)
  store %struct.notes_cache* %24, %struct.notes_cache** %6, align 8
  %25 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %26 = load %struct.userdiff_driver*, %struct.userdiff_driver** %5, align 8
  %27 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @strbuf_addf(%struct.strbuf* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.repository*, %struct.repository** %4, align 8
  %31 = load %struct.notes_cache*, %struct.notes_cache** %6, align 8
  %32 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.userdiff_driver*, %struct.userdiff_driver** %5, align 8
  %35 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @notes_cache_init(%struct.repository* %30, %struct.notes_cache* %31, i32 %33, i32 %36)
  %38 = load %struct.notes_cache*, %struct.notes_cache** %6, align 8
  %39 = load %struct.userdiff_driver*, %struct.userdiff_driver** %5, align 8
  %40 = getelementptr inbounds %struct.userdiff_driver, %struct.userdiff_driver* %39, i32 0, i32 0
  store %struct.notes_cache* %38, %struct.notes_cache** %40, align 8
  %41 = call i32 @strbuf_release(%struct.strbuf* %7)
  br label %42

42:                                               ; preds = %23, %18, %13
  %43 = load %struct.userdiff_driver*, %struct.userdiff_driver** %5, align 8
  store %struct.userdiff_driver* %43, %struct.userdiff_driver** %3, align 8
  br label %44

44:                                               ; preds = %42, %12
  %45 = load %struct.userdiff_driver*, %struct.userdiff_driver** %3, align 8
  ret %struct.userdiff_driver* %45
}

declare dso_local %struct.notes_cache* @xmalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @notes_cache_init(%struct.repository*, %struct.notes_cache*, i32, i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
