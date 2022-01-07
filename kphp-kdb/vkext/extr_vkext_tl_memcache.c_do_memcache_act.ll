; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_tl_memcache.c_do_memcache_act.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_tl_memcache.c_do_memcache_act.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memcache_value = type { %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.rpc_connection = type { i32 }

@MEMCACHE_ERROR = common dso_local global i8* null, align 8
@global_error = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"timeout\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_memcache_act(%struct.memcache_value* noalias sret %0, %struct.rpc_connection* %1, i64 %2, i32 %3, double %4) #0 {
  %6 = alloca %struct.rpc_connection*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca %struct.memcache_value, align 8
  store %struct.rpc_connection* %1, %struct.rpc_connection** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store double %4, double* %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %5
  %14 = load i8*, i8** @MEMCACHE_ERROR, align 8
  %15 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %10, i32 0, i32 1
  store i8* %14, i8** %15, align 8
  %16 = load i8*, i8** @global_error, align 8
  %17 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %10, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i8* %16, i8** %19, align 8
  %20 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %10, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %10, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @strlen(i8* %29)
  br label %32

31:                                               ; preds = %13
  br label %32

32:                                               ; preds = %31, %25
  %33 = phi i8* [ %30, %25 ], [ null, %31 ]
  %34 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %10, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i8* %33, i8** %36, align 8
  %37 = bitcast %struct.memcache_value* %0 to i8*
  %38 = bitcast %struct.memcache_value* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 24, i1 false)
  br label %95

39:                                               ; preds = %5
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %73

43:                                               ; preds = %39
  %44 = load double, double* %9, align 8
  %45 = call i64 @do_rpc_flush(double %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %43
  %48 = load i8*, i8** @MEMCACHE_ERROR, align 8
  %49 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %10, i32 0, i32 1
  store i8* %48, i8** %49, align 8
  %50 = load i8*, i8** @global_error, align 8
  %51 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %10, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i8* %50, i8** %53, align 8
  %54 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %10, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %47
  %60 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %10, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i8* @strlen(i8* %63)
  br label %66

65:                                               ; preds = %47
  br label %66

66:                                               ; preds = %65, %59
  %67 = phi i8* [ %64, %59 ], [ null, %65 ]
  %68 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %10, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store i8* %67, i8** %70, align 8
  %71 = bitcast %struct.memcache_value* %0 to i8*
  %72 = bitcast %struct.memcache_value* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %71, i8* align 8 %72, i64 24, i1 false)
  br label %95

73:                                               ; preds = %43, %39
  %74 = load i64, i64* %7, align 8
  %75 = load double, double* %9, align 8
  %76 = call i64 @do_rpc_get_and_parse(i64 %74, double %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %73
  %79 = load i8*, i8** @MEMCACHE_ERROR, align 8
  %80 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %10, i32 0, i32 1
  store i8* %79, i8** %80, align 8
  %81 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %10, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %83, align 8
  %84 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %10, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i8* @strlen(i8* %87)
  %89 = getelementptr inbounds %struct.memcache_value, %struct.memcache_value* %10, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  store i8* %88, i8** %91, align 8
  %92 = bitcast %struct.memcache_value* %0 to i8*
  %93 = bitcast %struct.memcache_value* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 8 %93, i64 24, i1 false)
  br label %95

94:                                               ; preds = %73
  call void (%struct.memcache_value*, ...) @do_memcache_parse_value(%struct.memcache_value* sret %0)
  br label %95

95:                                               ; preds = %94, %78, %66, %32
  ret void
}

declare dso_local i8* @strlen(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @do_rpc_flush(double) #1

declare dso_local i64 @do_rpc_get_and_parse(i64, double) #1

declare dso_local void @do_memcache_parse_value(%struct.memcache_value* sret, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
