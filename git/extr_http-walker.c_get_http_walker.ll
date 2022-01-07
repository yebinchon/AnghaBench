; ModuleID = '/home/carl/AnghaBench/git/extr_http-walker.c_get_http_walker.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-walker.c_get_http_walker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.walker = type { %struct.walker_data*, i32, i32, i32, i32, i64 }
%struct.walker_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32*, i32*, i64 }

@fetch = common dso_local global i32 0, align 4
@fetch_ref = common dso_local global i32 0, align 4
@prefetch = common dso_local global i32 0, align 4
@cleanup = common dso_local global i32 0, align 4
@fill_active_slot = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.walker* @get_http_walker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.walker_data*, align 8
  %5 = alloca %struct.walker*, align 8
  store i8* %0, i8** %2, align 8
  %6 = call i8* @xmalloc(i32 16)
  %7 = bitcast i8* %6 to %struct.walker_data*
  store %struct.walker_data* %7, %struct.walker_data** %4, align 8
  %8 = call i8* @xmalloc(i32 32)
  %9 = bitcast i8* %8 to %struct.walker*
  store %struct.walker* %9, %struct.walker** %5, align 8
  %10 = call i8* @xmalloc(i32 32)
  %11 = bitcast i8* %10 to %struct.TYPE_2__*
  %12 = load %struct.walker_data*, %struct.walker_data** %4, align 8
  %13 = getelementptr inbounds %struct.walker_data, %struct.walker_data* %12, i32 0, i32 1
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %13, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = call i8* @xstrdup(i8* %14)
  %16 = load %struct.walker_data*, %struct.walker_data** %4, align 8
  %17 = getelementptr inbounds %struct.walker_data, %struct.walker_data* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i8* %15, i8** %19, align 8
  %20 = load %struct.walker_data*, %struct.walker_data** %4, align 8
  %21 = getelementptr inbounds %struct.walker_data, %struct.walker_data* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.walker_data*, %struct.walker_data** %4, align 8
  %26 = getelementptr inbounds %struct.walker_data, %struct.walker_data* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %24, i64 %31
  %33 = getelementptr inbounds i8, i8* %32, i64 -1
  store i8* %33, i8** %3, align 8
  br label %34

34:                                               ; preds = %41, %1
  %35 = load i8*, i8** %3, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 47
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i8*, i8** %3, align 8
  store i8 0, i8* %40, align 1
  br label %41

41:                                               ; preds = %39
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 -1
  store i8* %43, i8** %3, align 8
  br label %34

44:                                               ; preds = %34
  %45 = load %struct.walker_data*, %struct.walker_data** %4, align 8
  %46 = getelementptr inbounds %struct.walker_data, %struct.walker_data* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.walker_data*, %struct.walker_data** %4, align 8
  %50 = getelementptr inbounds %struct.walker_data, %struct.walker_data* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  store i32* null, i32** %52, align 8
  %53 = load %struct.walker_data*, %struct.walker_data** %4, align 8
  %54 = getelementptr inbounds %struct.walker_data, %struct.walker_data* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i32* null, i32** %56, align 8
  %57 = load %struct.walker_data*, %struct.walker_data** %4, align 8
  %58 = getelementptr inbounds %struct.walker_data, %struct.walker_data* %57, i32 0, i32 0
  store i32 -1, i32* %58, align 8
  %59 = load %struct.walker*, %struct.walker** %5, align 8
  %60 = getelementptr inbounds %struct.walker, %struct.walker* %59, i32 0, i32 5
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @fetch, align 4
  %62 = load %struct.walker*, %struct.walker** %5, align 8
  %63 = getelementptr inbounds %struct.walker, %struct.walker* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @fetch_ref, align 4
  %65 = load %struct.walker*, %struct.walker** %5, align 8
  %66 = getelementptr inbounds %struct.walker, %struct.walker* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @prefetch, align 4
  %68 = load %struct.walker*, %struct.walker** %5, align 8
  %69 = getelementptr inbounds %struct.walker, %struct.walker* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @cleanup, align 4
  %71 = load %struct.walker*, %struct.walker** %5, align 8
  %72 = getelementptr inbounds %struct.walker, %struct.walker* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.walker_data*, %struct.walker_data** %4, align 8
  %74 = load %struct.walker*, %struct.walker** %5, align 8
  %75 = getelementptr inbounds %struct.walker, %struct.walker* %74, i32 0, i32 0
  store %struct.walker_data* %73, %struct.walker_data** %75, align 8
  %76 = load %struct.walker*, %struct.walker** %5, align 8
  ret %struct.walker* %76
}

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
