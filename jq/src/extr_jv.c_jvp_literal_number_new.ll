; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv.c_jvp_literal_number_new.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv.c_jvp_literal_number_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { i32, i32, i32, i32* }
%struct.TYPE_14__ = type { i32 }

@JV_REFCNT_INIT = common dso_local global i32 0, align 4
@NAN = common dso_local global i32 0, align 4
@DEC_Conversion_syntax = common dso_local global i32 0, align 4
@JV_INVALID = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@JVP_FLAGS_NUMBER_LITERAL = common dso_local global i32 0, align 4
@JV_NUMBER_SIZE_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i8*)* @jvp_literal_number_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jvp_literal_number_new(%struct.TYPE_13__* noalias sret %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__, align 8
  store i8* %1, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = call %struct.TYPE_12__* @jvp_literal_number_alloc(i32 %8)
  store %struct.TYPE_12__* %9, %struct.TYPE_12__** %4, align 8
  %10 = load i32, i32* @JV_REFCNT_INIT, align 4
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 3
  store i32* null, i32** %14, align 8
  %15 = call %struct.TYPE_14__* (...) @DEC_CONTEXT()
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %5, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  %18 = load i8*, i8** %3, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %20 = call i32 @decNumberFromString(i32* %17, i8* %18, %struct.TYPE_14__* %19)
  %21 = load i32, i32* @NAN, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DEC_Conversion_syntax, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = call i32 @jv_mem_free(%struct.TYPE_12__* %31)
  %33 = bitcast %struct.TYPE_13__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 bitcast (%struct.TYPE_13__* @JV_INVALID to i8*), i64 24, i1 false)
  br label %50

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* @JVP_FLAGS_NUMBER_LITERAL, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %36, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  store i32 0, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 3
  %43 = load i32, i32* @JV_NUMBER_SIZE_INIT, align 4
  store i32 %43, i32* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = ptrtoint i32* %46 to i32
  store i32 %47, i32* %44, align 4
  %48 = bitcast %struct.TYPE_13__* %0 to i8*
  %49 = bitcast %struct.TYPE_13__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 8 %49, i64 24, i1 false)
  br label %50

50:                                               ; preds = %34, %30
  ret void
}

declare dso_local %struct.TYPE_12__* @jvp_literal_number_alloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_14__* @DEC_CONTEXT(...) #1

declare dso_local i32 @decNumberFromString(i32*, i8*, %struct.TYPE_14__*) #1

declare dso_local i32 @jv_mem_free(%struct.TYPE_12__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
