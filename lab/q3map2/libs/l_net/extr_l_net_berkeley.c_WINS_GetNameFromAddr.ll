; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_berkeley.c_WINS_GetNameFromAddr.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/l_net/extr_l_net_berkeley.c_WINS_GetNameFromAddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_s = type { i32 }
%struct.hostent = type { i64 }
%struct.sockaddr_in = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@NET_NAMELEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WINS_GetNameFromAddr(%struct.sockaddr_s* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hostent*, align 8
  store %struct.sockaddr_s* %0, %struct.sockaddr_s** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.sockaddr_s*, %struct.sockaddr_s** %4, align 8
  %8 = bitcast %struct.sockaddr_s* %7 to %struct.sockaddr_in*
  %9 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  %10 = bitcast i32* %9 to i8*
  %11 = load i32, i32* @AF_INET, align 4
  %12 = call %struct.hostent* @gethostbyaddr(i8* %10, i32 4, i32 %11)
  store %struct.hostent* %12, %struct.hostent** %6, align 8
  %13 = load %struct.hostent*, %struct.hostent** %6, align 8
  %14 = icmp ne %struct.hostent* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.hostent*, %struct.hostent** %6, align 8
  %18 = getelementptr inbounds %struct.hostent, %struct.hostent* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = load i64, i64* @NET_NAMELEN, align 8
  %22 = sub nsw i64 %21, 1
  %23 = call i32 @strncpy(i8* %16, i8* %20, i64 %22)
  store i32 0, i32* %3, align 4
  br label %29

24:                                               ; preds = %2
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.sockaddr_s*, %struct.sockaddr_s** %4, align 8
  %27 = call i32 @WINS_AddrToString(%struct.sockaddr_s* %26)
  %28 = call i32 @strcpy(i8* %25, i32 %27)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %24, %15
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.hostent* @gethostbyaddr(i8*, i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @WINS_AddrToString(%struct.sockaddr_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
