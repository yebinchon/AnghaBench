; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_load_parse.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_load_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i64, i64, i32* }

@parse = common dso_local global %struct.parse zeroinitializer, align 8
@curch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_parse(%struct.parse* byval(%struct.parse) align 8 %0) #0 {
  %2 = bitcast %struct.parse* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.parse* @parse to i8*), i8* align 8 %2, i64 24, i1 false)
  %3 = load i64, i64* getelementptr inbounds (%struct.parse, %struct.parse* @parse, i32 0, i32 0), align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.parse, %struct.parse* @parse, i32 0, i32 1), align 8
  %5 = icmp ugt i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %12

7:                                                ; preds = %1
  %8 = load i32*, i32** getelementptr inbounds (%struct.parse, %struct.parse* @parse, i32 0, i32 2), align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.parse, %struct.parse* @parse, i32 0, i32 0), align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  br label %12

12:                                               ; preds = %7, %6
  %13 = phi i32 [ 0, %6 ], [ %11, %7 ]
  store i32 %13, i32* @curch, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
