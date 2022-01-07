; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_log.c_log_var_update_state.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_log.c_log_var_update_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@log_var_names = common dso_local global i8* null, align 8
@log_init_done = common dso_local global i32 0, align 4
@ATOMIC_ACQUIRE = common dso_local global i32 0, align 4
@LOG_INITIALIZED_NOT_ENABLED = common dso_local global i32 0, align 4
@JEMALLOC_LOG_VAR_BUFSIZE = common dso_local global i32 0, align 4
@LOG_ENABLED = common dso_local global i32 0, align 4
@ATOMIC_RELAXED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @log_var_update_state(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %13, i64 %18
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** @log_var_names, align 8
  store i8* %20, i8** %6, align 8
  %21 = load i32, i32* @ATOMIC_ACQUIRE, align 4
  %22 = call i32 @atomic_load_b(i32* @log_init_done, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @LOG_INITIALIZED_NOT_ENABLED, align 4
  store i32 %25, i32* %2, align 4
  br label %66

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %26, %63
  %28 = load i8*, i8** %6, align 8
  %29 = call i8* @log_var_extract_segment(i8* %28)
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** @log_var_names, align 8
  %32 = load i32, i32* @JEMALLOC_LOG_VAR_BUFSIZE, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = icmp ult i8* %30, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i64 @log_var_matches_segment(i8* %38, i8* %39, i8* %40, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %27
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* @LOG_ENABLED, align 4
  %48 = load i32, i32* @ATOMIC_RELAXED, align 4
  %49 = call i32 @atomic_store_u(i32* %46, i32 %47, i32 %48)
  %50 = load i32, i32* @LOG_ENABLED, align 4
  store i32 %50, i32* %2, align 4
  br label %66

51:                                               ; preds = %27
  %52 = load i8*, i8** %7, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* @LOG_INITIALIZED_NOT_ENABLED, align 4
  %60 = load i32, i32* @ATOMIC_RELAXED, align 4
  %61 = call i32 @atomic_store_u(i32* %58, i32 %59, i32 %60)
  %62 = load i32, i32* @LOG_INITIALIZED_NOT_ENABLED, align 4
  store i32 %62, i32* %2, align 4
  br label %66

63:                                               ; preds = %51
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  store i8* %65, i8** %6, align 8
  br label %27

66:                                               ; preds = %56, %44, %24
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @atomic_load_b(i32*, i32) #1

declare dso_local i8* @log_var_extract_segment(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @log_var_matches_segment(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @atomic_store_u(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
