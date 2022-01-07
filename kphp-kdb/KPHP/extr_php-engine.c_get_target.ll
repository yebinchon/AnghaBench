; ModuleID = '/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_get_target.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/KPHP/extr_php-engine.c_get_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_target = type { i32, %struct.in_addr }
%struct.in_addr = type { i32 }
%struct.hostent = type { i64, i32, i64, i32 }

@.str = private unnamed_addr constant [13 x i8] c"bad port %d\0A\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"can't resolve host\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_target(i8* %0, i32 %1, %struct.conn_target* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.conn_target*, align 8
  %8 = alloca %struct.hostent*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.conn_target* %2, %struct.conn_target** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp sle i32 0, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 65536
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %3
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (i32, i8*, ...) @vkprintf(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 -1, i32* %4, align 4
  br label %58

17:                                               ; preds = %11
  %18 = load i8*, i8** %5, align 8
  %19 = call %struct.hostent* @kdb_gethostbyname(i8* %18)
  store %struct.hostent* %19, %struct.hostent** %8, align 8
  %20 = icmp ne %struct.hostent* %19, null
  br i1 %20, label %21, label %42

21:                                               ; preds = %17
  %22 = load %struct.hostent*, %struct.hostent** %8, align 8
  %23 = getelementptr inbounds %struct.hostent, %struct.hostent* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AF_INET, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %42, label %27

27:                                               ; preds = %21
  %28 = load %struct.hostent*, %struct.hostent** %8, align 8
  %29 = getelementptr inbounds %struct.hostent, %struct.hostent* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 4
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = load %struct.hostent*, %struct.hostent** %8, align 8
  %34 = getelementptr inbounds %struct.hostent, %struct.hostent* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.hostent*, %struct.hostent** %8, align 8
  %39 = getelementptr inbounds %struct.hostent, %struct.hostent* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37, %32, %27, %21, %17
  %43 = call i32 (i32, i8*, ...) @vkprintf(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %58

44:                                               ; preds = %37
  %45 = load %struct.conn_target*, %struct.conn_target** %7, align 8
  %46 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %45, i32 0, i32 1
  %47 = load %struct.hostent*, %struct.hostent** %8, align 8
  %48 = getelementptr inbounds %struct.hostent, %struct.hostent* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.in_addr*
  %51 = bitcast %struct.in_addr* %46 to i8*
  %52 = bitcast %struct.in_addr* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 4, i1 false)
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.conn_target*, %struct.conn_target** %7, align 8
  %55 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.conn_target*, %struct.conn_target** %7, align 8
  %57 = call i32 @get_target_impl(%struct.conn_target* %56)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %44, %42, %14
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local %struct.hostent* @kdb_gethostbyname(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @get_target_impl(%struct.conn_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
