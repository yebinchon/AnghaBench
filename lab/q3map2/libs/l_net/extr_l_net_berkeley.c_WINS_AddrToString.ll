; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_berkeley.c_WINS_AddrToString.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_berkeley.c_WINS_AddrToString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_s = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@WINS_AddrToString.buffer = internal global [22 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [15 x i8] c"%d.%d.%d.%d:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @WINS_AddrToString(%struct.sockaddr_s* %0) #0 {
  %2 = alloca %struct.sockaddr_s*, align 8
  %3 = alloca i32, align 4
  store %struct.sockaddr_s* %0, %struct.sockaddr_s** %2, align 8
  %4 = load %struct.sockaddr_s*, %struct.sockaddr_s** %2, align 8
  %5 = bitcast %struct.sockaddr_s* %4 to %struct.sockaddr_in*
  %6 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ntohl(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = ashr i32 %10, 24
  %12 = and i32 %11, 255
  %13 = load i32, i32* %3, align 4
  %14 = ashr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = load i32, i32* %3, align 4
  %17 = ashr i32 %16, 8
  %18 = and i32 %17, 255
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 255
  %21 = load %struct.sockaddr_s*, %struct.sockaddr_s** %2, align 8
  %22 = bitcast %struct.sockaddr_s* %21 to %struct.sockaddr_in*
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ntohs(i32 %24)
  %26 = call i32 @sprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @WINS_AddrToString.buffer, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %18, i32 %20, i32 %25)
  ret i8* getelementptr inbounds ([22 x i8], [22 x i8]* @WINS_AddrToString.buffer, i64 0, i64 0)
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
