; ModuleID = '/home/carl/AnghaBench/h2o/lib/core/extr_request.c_h2o_write_error_log.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/core/extr_request.c_h2o_write_error_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }
%struct.iovec = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@IOV_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_write_error_log(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca [3 x %struct.iovec], align 16
  %8 = bitcast %struct.TYPE_4__* %5 to { i8*, i32 }*
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %8, i32 0, i32 0
  store i8* %0, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %8, i32 0, i32 1
  store i32 %1, i32* %10, align 8
  %11 = bitcast %struct.TYPE_4__* %6 to { i8*, i32 }*
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %11, i32 0, i32 0
  store i8* %2, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %11, i32 0, i32 1
  store i32 %3, i32* %13, align 8
  %14 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %7, i64 0, i64 0
  %15 = getelementptr inbounds %struct.iovec, %struct.iovec* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %15, align 16
  %18 = getelementptr inbounds %struct.iovec, %struct.iovec* %14, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %18, align 8
  %21 = getelementptr inbounds %struct.iovec, %struct.iovec* %14, i64 1
  %22 = getelementptr inbounds %struct.iovec, %struct.iovec* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %22, align 16
  %25 = getelementptr inbounds %struct.iovec, %struct.iovec* %21, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %25, align 8
  %28 = getelementptr inbounds %struct.iovec, %struct.iovec* %21, i64 1
  %29 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %29, align 16
  %30 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i32 0, i32 1
  store i32 1, i32* %30, align 8
  %31 = load i32, i32* @IOV_MAX, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ule i64 3, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @H2O_BUILD_ASSERT(i32 %34)
  %36 = getelementptr inbounds [3 x %struct.iovec], [3 x %struct.iovec]* %7, i64 0, i64 0
  %37 = call i32 @writev(i32 2, %struct.iovec* %36, i32 3)
  ret void
}

declare dso_local i32 @H2O_BUILD_ASSERT(i32) #1

declare dso_local i32 @writev(i32, %struct.iovec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
