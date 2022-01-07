; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv.c_tsd_dec_ctx_get.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv.c_tsd_dec_ctx_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@dec_ctx_once = common dso_local global i32 0, align 4
@tsd_dec_ctx_init = common dso_local global i32 0, align 4
@DEC_MAX_EMAX = common dso_local global i32 0, align 4
@DEC_MIN_EMAX = common dso_local global i32 0, align 4
@DEC_ROUND_HALF_UP = common dso_local global i32 0, align 4
@dec_ctx_key = common dso_local global i32 0, align 4
@DEC_MAX_DIGITS = common dso_local global i32 0, align 4
@dec_ctx_dbl_key = common dso_local global i32 0, align 4
@BIN64_DEC_PRECISION = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"error: cannot store thread specific data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32*)* @tsd_dec_ctx_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @tsd_dec_ctx_get(i32* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* @tsd_dec_ctx_init, align 4
  %7 = call i32 @pthread_once(i32* @dec_ctx_once, i32 %6)
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @pthread_getspecific(i32 %9)
  %11 = inttoptr i64 %10 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %4, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %2, align 8
  br label %60

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %19 = load i32, i32* @DEC_MAX_EMAX, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 2
  %21 = load i32, i32* @DEC_MIN_EMAX, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 3
  %23 = load i32, i32* @DEC_ROUND_HALF_UP, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 4
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 5
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 6
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 7
  store i32 0, i32* %27, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = icmp eq i32* %28, @dec_ctx_key
  br i1 %29, label %30, label %33

30:                                               ; preds = %16
  %31 = load i32, i32* @DEC_MAX_DIGITS, align 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  br label %40

33:                                               ; preds = %16
  %34 = load i32*, i32** %3, align 8
  %35 = icmp eq i32* %34, @dec_ctx_dbl_key
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @BIN64_DEC_PRECISION, align 4
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %39, %30
  %41 = call %struct.TYPE_5__* @malloc(i32 32)
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %4, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = icmp ne %struct.TYPE_5__* %42, null
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = bitcast %struct.TYPE_5__* %45 to i8*
  %47 = bitcast %struct.TYPE_5__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 32, i1 false)
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = call i64 @pthread_setspecific(i32 %49, %struct.TYPE_5__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 @fprintf(i32 %54, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %56 = call i32 (...) @abort() #4
  unreachable

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %57, %40
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %59, %struct.TYPE_5__** %2, align 8
  br label %60

60:                                               ; preds = %58, %14
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %61
}

declare dso_local i32 @pthread_once(i32*, i32) #1

declare dso_local i64 @pthread_getspecific(i32) #1

declare dso_local %struct.TYPE_5__* @malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @pthread_setspecific(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
