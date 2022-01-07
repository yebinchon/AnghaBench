; ModuleID = '/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-perm.c_dl_perm_del.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-perm.c_dl_perm_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dl_perm_del(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [6 x %struct.TYPE_17__*], align 16
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sle i32 0, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %18, label %17

17:                                               ; preds = %11, %2
  store i32 -1, i32* %3, align 4
  br label %91

18:                                               ; preds = %11
  %19 = bitcast [6 x %struct.TYPE_17__*]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 48, i1 false)
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %21, align 8
  %23 = getelementptr inbounds [6 x %struct.TYPE_17__*], [6 x %struct.TYPE_17__*]* %6, i64 0, i64 0
  %24 = getelementptr inbounds [6 x %struct.TYPE_17__*], [6 x %struct.TYPE_17__*]* %6, i64 0, i64 3
  %25 = getelementptr inbounds [6 x %struct.TYPE_17__*], [6 x %struct.TYPE_17__*]* %6, i64 0, i64 1
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @dl_prm_extract(%struct.TYPE_17__* %22, %struct.TYPE_17__** %23, %struct.TYPE_17__** %24, %struct.TYPE_17__** %25, i32 %26)
  %28 = getelementptr inbounds [6 x %struct.TYPE_17__*], [6 x %struct.TYPE_17__*]* %6, i64 0, i64 0
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 16
  %30 = call i64 @LEN(%struct.TYPE_17__* %29)
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %5, align 4
  %35 = getelementptr inbounds [6 x %struct.TYPE_17__*], [6 x %struct.TYPE_17__*]* %6, i64 0, i64 1
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %37 = getelementptr inbounds [6 x %struct.TYPE_17__*], [6 x %struct.TYPE_17__*]* %6, i64 0, i64 1
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %41 = call i32 @dl_prm_split_node(%struct.TYPE_17__* %36, %struct.TYPE_17__** %37, %struct.TYPE_17__** %7, i32 %38, i32* %40)
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %43 = getelementptr inbounds [6 x %struct.TYPE_17__*], [6 x %struct.TYPE_17__*]* %6, i64 0, i64 2
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = call i32 @dl_prm_split_node(%struct.TYPE_17__* %42, %struct.TYPE_17__** %7, %struct.TYPE_17__** %43, i32 1, i32* %45)
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %67, %18
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 3
  br i1 %49, label %50, label %70

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [6 x %struct.TYPE_17__*], [6 x %struct.TYPE_17__*]* %6, i64 0, i64 %53
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [6 x %struct.TYPE_17__*], [6 x %struct.TYPE_17__*]* %6, i64 0, i64 %56
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [6 x %struct.TYPE_17__*], [6 x %struct.TYPE_17__*]* %6, i64 0, i64 %61
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  %66 = call i32 @dl_prm_merge(%struct.TYPE_17__** %54, %struct.TYPE_17__* %58, %struct.TYPE_17__* %63, i32* %65)
  br label %67

67:                                               ; preds = %50
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %47

70:                                               ; preds = %47
  %71 = getelementptr inbounds [6 x %struct.TYPE_17__*], [6 x %struct.TYPE_17__*]* %6, i64 0, i64 3
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %71, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 2
  store %struct.TYPE_17__* %72, %struct.TYPE_17__** %74, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.TYPE_17__* @dl_prm_rev_del(i32* %76, i32 %79)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %82 = icmp eq %struct.TYPE_17__* %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %86 = call i32 @dl_free_prm(%struct.TYPE_17__* %85)
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %88, align 8
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %70, %17
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dl_prm_extract(%struct.TYPE_17__*, %struct.TYPE_17__**, %struct.TYPE_17__**, %struct.TYPE_17__**, i32) #2

declare dso_local i64 @LEN(%struct.TYPE_17__*) #2

declare dso_local i32 @dl_prm_split_node(%struct.TYPE_17__*, %struct.TYPE_17__**, %struct.TYPE_17__**, i32, i32*) #2

declare dso_local i32 @dl_prm_merge(%struct.TYPE_17__**, %struct.TYPE_17__*, %struct.TYPE_17__*, i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local %struct.TYPE_17__* @dl_prm_rev_del(i32*, i32) #2

declare dso_local i32 @dl_free_prm(%struct.TYPE_17__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
