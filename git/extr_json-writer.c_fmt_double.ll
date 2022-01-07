; ModuleID = '/home/carl/AnghaBench/git/extr_json-writer.c_fmt_double.c'
source_filename = "/home/carl/AnghaBench/git/extr_json-writer.c_fmt_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.json_writer = type { %struct.strbuf }

@.str = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%%.%df\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.json_writer*, i32, double)* @fmt_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fmt_double(%struct.json_writer* %0, i32 %1, double %2) #0 {
  %4 = alloca %struct.json_writer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca %struct.strbuf, align 8
  store %struct.json_writer* %0, %struct.json_writer** %4, align 8
  store i32 %1, i32* %5, align 4
  store double %2, double* %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load %struct.json_writer*, %struct.json_writer** %4, align 8
  %12 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %11, i32 0, i32 0
  %13 = load double, double* %6, align 8
  %14 = call i32 @strbuf_addf(%struct.strbuf* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), double %13)
  br label %27

15:                                               ; preds = %3
  %16 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %17 = load i32, i32* %5, align 4
  %18 = sitofp i32 %17 to double
  %19 = call i32 @strbuf_addf(%struct.strbuf* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), double %18)
  %20 = load %struct.json_writer*, %struct.json_writer** %4, align 8
  %21 = getelementptr inbounds %struct.json_writer, %struct.json_writer* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load double, double* %6, align 8
  %25 = call i32 @strbuf_addf(%struct.strbuf* %21, i8* %23, double %24)
  %26 = call i32 @strbuf_release(%struct.strbuf* %7)
  br label %27

27:                                               ; preds = %15, %10
  ret void
}

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, double) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
