; ModuleID = '/home/carl/AnghaBench/h2o/lib/core/extr_request.c_h2o_get_redirect_method.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/core/extr_request.c_h2o_get_redirect_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"GET\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @h2o_get_redirect_method(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__, align 4
  %7 = bitcast %struct.TYPE_5__* %4 to i64*
  store i64 %0, i64* %7, align 4
  store i32 %1, i32* %5, align 4
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %13 = call i64 @h2o_memis(i32 %9, i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 307
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 308
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i64 @h2o_iovec_init(i32 %22)
  %24 = bitcast %struct.TYPE_5__* %6 to i64*
  store i64 %23, i64* %24, align 4
  %25 = bitcast %struct.TYPE_5__* %4 to i8*
  %26 = bitcast %struct.TYPE_5__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 8, i1 false)
  br label %27

27:                                               ; preds = %21, %18, %15, %2
  %28 = bitcast %struct.TYPE_5__* %3 to i8*
  %29 = bitcast %struct.TYPE_5__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 8, i1 false)
  %30 = bitcast %struct.TYPE_5__* %3 to i64*
  %31 = load i64, i64* %30, align 4
  ret i64 %31
}

declare dso_local i64 @h2o_memis(i32, i32, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i64 @h2o_iovec_init(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
