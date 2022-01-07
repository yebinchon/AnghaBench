; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonsocket.c_h2o_socket_getnumerichost.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonsocket.c_h2o_socket_getnumerichost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.sockaddr_in = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @h2o_socket_getnumerichost(%struct.sockaddr* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %11 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AF_INET, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %3
  %16 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %17 = bitcast %struct.sockaddr* %16 to i8*
  %18 = bitcast i8* %17 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %18, %struct.sockaddr_in** %8, align 8
  %19 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @htonl(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = ashr i32 %25, 24
  %27 = load i32, i32* %9, align 4
  %28 = ashr i32 %27, 16
  %29 = and i32 %28, 255
  %30 = load i32, i32* %9, align 4
  %31 = ashr i32 %30, 8
  %32 = and i32 %31, 255
  %33 = load i32, i32* %9, align 4
  %34 = and i32 %33, 255
  %35 = call i64 @sprintf(i8* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29, i32 %32, i32 %34)
  store i64 %35, i64* %4, align 8
  br label %49

36:                                               ; preds = %3
  %37 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* @NI_MAXHOST, align 4
  %41 = load i32, i32* @NI_NUMERICHOST, align 4
  %42 = call i64 @getnameinfo(%struct.sockaddr* %37, i32 %38, i8* %39, i32 %40, i32* null, i32 0, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i64, i64* @SIZE_MAX, align 8
  store i64 %45, i64* %4, align 8
  br label %49

46:                                               ; preds = %36
  %47 = load i8*, i8** %7, align 8
  %48 = call i64 @strlen(i8* %47)
  store i64 %48, i64* %4, align 8
  br label %49

49:                                               ; preds = %46, %44, %15
  %50 = load i64, i64* %4, align 8
  ret i64 %50
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @sprintf(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i32*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
