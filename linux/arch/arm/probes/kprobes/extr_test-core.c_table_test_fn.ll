; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/probes/kprobes/extr_test-core.c_table_test_fn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/probes/kprobes/extr_test-core.c_table_test_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decode_header = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.table_test_args = type { i32, i32 }
%struct.decode_table = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@DECODE_TYPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Match value has bits not in mask\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Mask has bits not in parent mask\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Value is inconsistent with parent\00", align 1
@DECODE_TYPE_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.decode_header*, i8*)* @table_test_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @table_test_fn(%struct.decode_header* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.decode_header*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.table_test_args*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.decode_table*, align 8
  %9 = alloca %struct.table_test_args, align 4
  store %struct.decode_header* %0, %struct.decode_header** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.table_test_args*
  store %struct.table_test_args* %11, %struct.table_test_args** %6, align 8
  %12 = load %struct.decode_header*, %struct.decode_header** %4, align 8
  %13 = getelementptr inbounds %struct.decode_header, %struct.decode_header* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DECODE_TYPE_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.decode_header*, %struct.decode_header** %4, align 8
  %19 = getelementptr inbounds %struct.decode_header, %struct.decode_header* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.decode_header*, %struct.decode_header** %4, align 8
  %23 = getelementptr inbounds %struct.decode_header, %struct.decode_header* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %21, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load %struct.decode_header*, %struct.decode_header** %4, align 8
  %31 = call i32 @table_test_fail(%struct.decode_header* %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 %31, i32* %3, align 4
  br label %91

32:                                               ; preds = %2
  %33 = load %struct.decode_header*, %struct.decode_header** %4, align 8
  %34 = getelementptr inbounds %struct.decode_header, %struct.decode_header* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.table_test_args*, %struct.table_test_args** %6, align 8
  %38 = getelementptr inbounds %struct.table_test_args, %struct.table_test_args* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %36, %39
  %41 = load %struct.table_test_args*, %struct.table_test_args** %6, align 8
  %42 = getelementptr inbounds %struct.table_test_args, %struct.table_test_args* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %32
  %46 = load %struct.decode_header*, %struct.decode_header** %4, align 8
  %47 = call i32 @table_test_fail(%struct.decode_header* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 %47, i32* %3, align 4
  br label %91

48:                                               ; preds = %32
  %49 = load %struct.decode_header*, %struct.decode_header** %4, align 8
  %50 = getelementptr inbounds %struct.decode_header, %struct.decode_header* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.table_test_args*, %struct.table_test_args** %6, align 8
  %54 = getelementptr inbounds %struct.table_test_args, %struct.table_test_args* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = xor i32 %52, %55
  %57 = load %struct.table_test_args*, %struct.table_test_args** %6, align 8
  %58 = getelementptr inbounds %struct.table_test_args, %struct.table_test_args* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %48
  %63 = load %struct.decode_header*, %struct.decode_header** %4, align 8
  %64 = call i32 @table_test_fail(%struct.decode_header* %63, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 %64, i32* %3, align 4
  br label %91

65:                                               ; preds = %48
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @DECODE_TYPE_TABLE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %90

69:                                               ; preds = %65
  %70 = load %struct.decode_header*, %struct.decode_header** %4, align 8
  %71 = bitcast %struct.decode_header* %70 to %struct.decode_table*
  store %struct.decode_table* %71, %struct.decode_table** %8, align 8
  %72 = load %struct.table_test_args*, %struct.table_test_args** %6, align 8
  %73 = bitcast %struct.table_test_args* %9 to i8*
  %74 = bitcast %struct.table_test_args* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 4 %74, i64 8, i1 false)
  %75 = load %struct.decode_header*, %struct.decode_header** %4, align 8
  %76 = getelementptr inbounds %struct.decode_header, %struct.decode_header* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.table_test_args, %struct.table_test_args* %9, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = load %struct.decode_header*, %struct.decode_header** %4, align 8
  %81 = getelementptr inbounds %struct.decode_header, %struct.decode_header* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.table_test_args, %struct.table_test_args* %9, i32 0, i32 1
  store i32 %83, i32* %84, align 4
  %85 = load %struct.decode_table*, %struct.decode_table** %8, align 8
  %86 = getelementptr inbounds %struct.decode_table, %struct.decode_table* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @table_iter(i32 %88, i32 (%struct.decode_header*, i8*)* @table_test_fn, %struct.table_test_args* %9)
  store i32 %89, i32* %3, align 4
  br label %91

90:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %69, %62, %45, %29
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @table_test_fail(%struct.decode_header*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @table_iter(i32, i32 (%struct.decode_header*, i8*)*, %struct.table_test_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
