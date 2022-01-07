; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_wins.c_WINS_StringToAddr.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_wins.c_WINS_StringToAddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_s = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"%d.%d.%d.%d:%d\00", align 1
@AF_INET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WINS_StringToAddr(i8* %0, %struct.sockaddr_s* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sockaddr_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.sockaddr_s* %1, %struct.sockaddr_s** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @sscanf(i8* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %5, i32* %6, i32* %7, i32* %8, i32* %9)
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 %13, 24
  %15 = load i32, i32* %6, align 4
  %16 = shl i32 %15, 16
  %17 = or i32 %14, %16
  %18 = load i32, i32* %7, align 4
  %19 = shl i32 %18, 8
  %20 = or i32 %17, %19
  %21 = load i32, i32* %8, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @AF_INET, align 4
  %24 = load %struct.sockaddr_s*, %struct.sockaddr_s** %4, align 8
  %25 = getelementptr inbounds %struct.sockaddr_s, %struct.sockaddr_s* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @htonl(i32 %26)
  %28 = load %struct.sockaddr_s*, %struct.sockaddr_s** %4, align 8
  %29 = bitcast %struct.sockaddr_s* %28 to %struct.sockaddr_in*
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @htons(i32 %32)
  %34 = load %struct.sockaddr_s*, %struct.sockaddr_s** %4, align 8
  %35 = bitcast %struct.sockaddr_s* %34 to %struct.sockaddr_in*
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  ret i32 0
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
