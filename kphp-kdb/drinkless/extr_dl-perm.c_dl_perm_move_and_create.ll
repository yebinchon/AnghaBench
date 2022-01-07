; ModuleID = '/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-perm.c_dl_perm_move_and_create.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-perm.c_dl_perm_move_and_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dl_perm_move_and_create(%struct.TYPE_19__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [10 x %struct.TYPE_18__*], align 16
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp sle i32 0, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %20, label %19

19:                                               ; preds = %13, %3
  store i32 -1, i32* %4, align 4
  br label %131

20:                                               ; preds = %13
  %21 = load i32, i32* %7, align 4
  %22 = icmp sle i32 0, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp sle i32 %24, %27
  br i1 %28, label %30, label %29

29:                                               ; preds = %23, %20
  store i32 -1, i32* %4, align 4
  br label %131

30:                                               ; preds = %23
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @dl_perm_get_rev_i(%struct.TYPE_19__* %31, i32 %32)
  %34 = icmp eq i32 %33, -1
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = bitcast [10 x %struct.TYPE_18__*]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %37, i8 0, i64 80, i1 false)
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %30
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = getelementptr inbounds [10 x %struct.TYPE_18__*], [10 x %struct.TYPE_18__*]* %8, i64 0, i64 0
  store %struct.TYPE_18__* %46, %struct.TYPE_18__** %47, align 16
  br label %72

48:                                               ; preds = %30
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %52 = getelementptr inbounds [10 x %struct.TYPE_18__*], [10 x %struct.TYPE_18__*]* %8, i64 0, i64 0
  %53 = getelementptr inbounds [10 x %struct.TYPE_18__*], [10 x %struct.TYPE_18__*]* %8, i64 0, i64 4
  %54 = getelementptr inbounds [10 x %struct.TYPE_18__*], [10 x %struct.TYPE_18__*]* %8, i64 0, i64 1
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @dl_prm_extract(%struct.TYPE_18__* %51, %struct.TYPE_18__** %52, %struct.TYPE_18__** %53, %struct.TYPE_18__** %54, i32 %55)
  %57 = getelementptr inbounds [10 x %struct.TYPE_18__*], [10 x %struct.TYPE_18__*]* %8, i64 0, i64 0
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %57, align 16
  %59 = call i64 @LEN(%struct.TYPE_18__* %58)
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = sub nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %7, align 4
  %64 = getelementptr inbounds [10 x %struct.TYPE_18__*], [10 x %struct.TYPE_18__*]* %8, i64 0, i64 1
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %64, align 8
  %66 = getelementptr inbounds [10 x %struct.TYPE_18__*], [10 x %struct.TYPE_18__*]* %8, i64 0, i64 1
  %67 = getelementptr inbounds [10 x %struct.TYPE_18__*], [10 x %struct.TYPE_18__*]* %8, i64 0, i64 3
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 3
  %71 = call i32 @dl_prm_split_node(%struct.TYPE_18__* %65, %struct.TYPE_18__** %66, %struct.TYPE_18__** %67, i32 %68, i32* %70)
  br label %72

72:                                               ; preds = %48, %43
  %73 = call %struct.TYPE_18__* (...) @dl_alloc_prm()
  store %struct.TYPE_18__* %73, %struct.TYPE_18__** %9, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %83, %86
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = call i32 (...) @rand()
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %96 = call i32 @dl_prm_rev_add(i32* %94, %struct.TYPE_18__* %95)
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %98 = getelementptr inbounds [10 x %struct.TYPE_18__*], [10 x %struct.TYPE_18__*]* %8, i64 0, i64 2
  store %struct.TYPE_18__* %97, %struct.TYPE_18__** %98, align 16
  store i32 0, i32* %10, align 4
  br label %99

99:                                               ; preds = %119, %72
  %100 = load i32, i32* %10, align 4
  %101 = icmp slt i32 %100, 4
  br i1 %101, label %102, label %122

102:                                              ; preds = %99
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [10 x %struct.TYPE_18__*], [10 x %struct.TYPE_18__*]* %8, i64 0, i64 %105
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [10 x %struct.TYPE_18__*], [10 x %struct.TYPE_18__*]* %8, i64 0, i64 %108
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [10 x %struct.TYPE_18__*], [10 x %struct.TYPE_18__*]* %8, i64 0, i64 %113
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %114, align 8
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 3
  %118 = call i32 @dl_prm_merge(%struct.TYPE_18__** %106, %struct.TYPE_18__* %110, %struct.TYPE_18__* %115, i32* %117)
  br label %119

119:                                              ; preds = %102
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %10, align 4
  br label %99

122:                                              ; preds = %99
  %123 = getelementptr inbounds [10 x %struct.TYPE_18__*], [10 x %struct.TYPE_18__*]* %8, i64 0, i64 4
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %123, align 16
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 2
  store %struct.TYPE_18__* %124, %struct.TYPE_18__** %126, align 8
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 4
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %122, %29, %19
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dl_perm_get_rev_i(%struct.TYPE_19__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dl_prm_extract(%struct.TYPE_18__*, %struct.TYPE_18__**, %struct.TYPE_18__**, %struct.TYPE_18__**, i32) #1

declare dso_local i64 @LEN(%struct.TYPE_18__*) #1

declare dso_local i32 @dl_prm_split_node(%struct.TYPE_18__*, %struct.TYPE_18__**, %struct.TYPE_18__**, i32, i32*) #1

declare dso_local %struct.TYPE_18__* @dl_alloc_prm(...) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @dl_prm_rev_add(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @dl_prm_merge(%struct.TYPE_18__**, %struct.TYPE_18__*, %struct.TYPE_18__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
