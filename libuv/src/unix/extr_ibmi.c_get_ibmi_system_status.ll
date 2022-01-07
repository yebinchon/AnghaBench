; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_ibmi.c_get_ibmi_system_status.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_ibmi.c_get_ibmi_system_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._errcode = type { i32, i32, i8* }
%struct._errcode.0 = type { i32, i32, [7 x i8] }

@__const.get_ibmi_system_status.format = private unnamed_addr constant [8 x i8] c"\E2\E2\E3\E2\F0\F2\F0\F0", align 1
@__const.get_ibmi_system_status.reset_status = private unnamed_addr constant [10 x i8] c"\\\D5\D6@@@@@@@", align 1
@RSLOBJ_TS_PGM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"QWCRSSTS\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"QSYS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._errcode*)* @get_ibmi_system_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ibmi_system_status(%struct._errcode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._errcode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [8 x i8], align 1
  %6 = alloca [10 x i8], align 1
  %7 = alloca %struct._errcode.0, align 4
  %8 = alloca i32, align 16
  %9 = alloca [6 x i8*], align 16
  %10 = alloca i32, align 4
  store %struct._errcode* %0, %struct._errcode** %3, align 8
  store i32 16, i32* %4, align 4
  %11 = bitcast [8 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.get_ibmi_system_status.format, i32 0, i32 0), i64 8, i1 false)
  %12 = bitcast [10 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %12, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.get_ibmi_system_status.reset_status, i32 0, i32 0), i64 10, i1 false)
  %13 = load i32, i32* @RSLOBJ_TS_PGM, align 4
  %14 = call i32 @_RSLOBJ2(i32* %8, i32 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %2, align 4
  br label %40

19:                                               ; preds = %1
  %20 = load %struct._errcode*, %struct._errcode** %3, align 8
  %21 = call i32 @memset(%struct._errcode* %20, i32 0, i32 16)
  %22 = bitcast %struct._errcode.0* %7 to %struct._errcode*
  %23 = call i32 @memset(%struct._errcode* %22, i32 0, i32 16)
  %24 = getelementptr inbounds %struct._errcode.0, %struct._errcode.0* %7, i32 0, i32 0
  store i32 16, i32* %24, align 4
  %25 = load %struct._errcode*, %struct._errcode** %3, align 8
  %26 = bitcast %struct._errcode* %25 to i8*
  %27 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i64 0, i64 0
  store i8* %26, i8** %27, align 16
  %28 = bitcast i32* %4 to i8*
  %29 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i64 0, i64 1
  store i8* %28, i8** %29, align 8
  %30 = bitcast [8 x i8]* %5 to i8*
  %31 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i64 0, i64 2
  store i8* %30, i8** %31, align 16
  %32 = bitcast [10 x i8]* %6 to i8*
  %33 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i64 0, i64 3
  store i8* %32, i8** %33, align 8
  %34 = bitcast %struct._errcode.0* %7 to i8*
  %35 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i64 0, i64 4
  store i8* %34, i8** %35, align 16
  %36 = getelementptr inbounds [6 x i8*], [6 x i8*]* %9, i64 0, i64 5
  store i8* null, i8** %36, align 8
  %37 = bitcast [6 x i8*]* %9 to i8**
  %38 = call i32 @_PGMCALL(i32* %8, i8** %37, i32 0)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %19, %17
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @_RSLOBJ2(i32*, i32, i8*, i8*) #2

declare dso_local i32 @memset(%struct._errcode*, i32, i32) #2

declare dso_local i32 @_PGMCALL(i32*, i8**, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
