; ModuleID = '/home/carl/AnghaBench/lede/scripts/config/extr_expr.c_expr_copy.c'
source_filename = "/home/carl/AnghaBench/lede/scripts/config/extr_expr.c_expr_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.expr*, i32 }
%struct.TYPE_3__ = type { %struct.expr*, i32 }

@.str = private unnamed_addr constant [20 x i8] c"can't copy type %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.expr* @expr_copy(%struct.expr* %0) #0 {
  %2 = alloca %struct.expr*, align 8
  %3 = alloca %struct.expr*, align 8
  %4 = alloca %struct.expr*, align 8
  store %struct.expr* %0, %struct.expr** %3, align 8
  %5 = load %struct.expr*, %struct.expr** %3, align 8
  %6 = icmp ne %struct.expr* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.expr* null, %struct.expr** %2, align 8
  br label %73

8:                                                ; preds = %1
  %9 = call %struct.expr* @xmalloc(i32 40)
  store %struct.expr* %9, %struct.expr** %4, align 8
  %10 = load %struct.expr*, %struct.expr** %4, align 8
  %11 = load %struct.expr*, %struct.expr** %3, align 8
  %12 = call i32 @memcpy(%struct.expr* %10, %struct.expr* %11, i32 40)
  %13 = load %struct.expr*, %struct.expr** %3, align 8
  %14 = getelementptr inbounds %struct.expr, %struct.expr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %64 [
    i32 129, label %16
    i32 131, label %23
    i32 137, label %32
    i32 136, label %32
    i32 135, label %32
    i32 134, label %32
    i32 132, label %32
    i32 128, label %32
    i32 138, label %47
    i32 130, label %47
    i32 133, label %47
  ]

16:                                               ; preds = %8
  %17 = load %struct.expr*, %struct.expr** %4, align 8
  %18 = getelementptr inbounds %struct.expr, %struct.expr* %17, i32 0, i32 2
  %19 = load %struct.expr*, %struct.expr** %3, align 8
  %20 = getelementptr inbounds %struct.expr, %struct.expr* %19, i32 0, i32 2
  %21 = bitcast %struct.TYPE_3__* %18 to i8*
  %22 = bitcast %struct.TYPE_3__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 16, i1 false)
  br label %71

23:                                               ; preds = %8
  %24 = load %struct.expr*, %struct.expr** %3, align 8
  %25 = getelementptr inbounds %struct.expr, %struct.expr* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.expr*, %struct.expr** %26, align 8
  %28 = call %struct.expr* @expr_copy(%struct.expr* %27)
  %29 = load %struct.expr*, %struct.expr** %4, align 8
  %30 = getelementptr inbounds %struct.expr, %struct.expr* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store %struct.expr* %28, %struct.expr** %31, align 8
  br label %71

32:                                               ; preds = %8, %8, %8, %8, %8, %8
  %33 = load %struct.expr*, %struct.expr** %3, align 8
  %34 = getelementptr inbounds %struct.expr, %struct.expr* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.expr*, %struct.expr** %4, align 8
  %38 = getelementptr inbounds %struct.expr, %struct.expr* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 8
  %40 = load %struct.expr*, %struct.expr** %3, align 8
  %41 = getelementptr inbounds %struct.expr, %struct.expr* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.expr*, %struct.expr** %4, align 8
  %45 = getelementptr inbounds %struct.expr, %struct.expr* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 8
  br label %71

47:                                               ; preds = %8, %8, %8
  %48 = load %struct.expr*, %struct.expr** %3, align 8
  %49 = getelementptr inbounds %struct.expr, %struct.expr* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.expr*, %struct.expr** %50, align 8
  %52 = call %struct.expr* @expr_copy(%struct.expr* %51)
  %53 = load %struct.expr*, %struct.expr** %4, align 8
  %54 = getelementptr inbounds %struct.expr, %struct.expr* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store %struct.expr* %52, %struct.expr** %55, align 8
  %56 = load %struct.expr*, %struct.expr** %3, align 8
  %57 = getelementptr inbounds %struct.expr, %struct.expr* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.expr*, %struct.expr** %58, align 8
  %60 = call %struct.expr* @expr_copy(%struct.expr* %59)
  %61 = load %struct.expr*, %struct.expr** %4, align 8
  %62 = getelementptr inbounds %struct.expr, %struct.expr* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store %struct.expr* %60, %struct.expr** %63, align 8
  br label %71

64:                                               ; preds = %8
  %65 = load %struct.expr*, %struct.expr** %4, align 8
  %66 = getelementptr inbounds %struct.expr, %struct.expr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load %struct.expr*, %struct.expr** %4, align 8
  %70 = call i32 @free(%struct.expr* %69)
  store %struct.expr* null, %struct.expr** %4, align 8
  br label %71

71:                                               ; preds = %64, %47, %32, %23, %16
  %72 = load %struct.expr*, %struct.expr** %4, align 8
  store %struct.expr* %72, %struct.expr** %2, align 8
  br label %73

73:                                               ; preds = %71, %7
  %74 = load %struct.expr*, %struct.expr** %2, align 8
  ret %struct.expr* %74
}

declare dso_local %struct.expr* @xmalloc(i32) #1

declare dso_local i32 @memcpy(%struct.expr*, %struct.expr*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @free(%struct.expr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
