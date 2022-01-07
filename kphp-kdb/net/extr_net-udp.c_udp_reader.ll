; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp.c_udp_reader.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-udp.c_udp_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udp_socket = type { i32, i32 }

@U_ERRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"in udp_reader(%d,%d)\0A\00", align 1
@U_NORD = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"udp_reader(%d): %d packets received, %d error packets\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udp_reader(%struct.udp_socket* %0) #0 {
  %2 = alloca %struct.udp_socket*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.udp_socket* %0, %struct.udp_socket** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = load %struct.udp_socket*, %struct.udp_socket** %2, align 8
  %8 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @U_ERRQ, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.udp_socket*, %struct.udp_socket** %2, align 8
  %13 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 (i32, i8*, i32, i32, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %85, %66, %58, %51, %43, %1
  %18 = load %struct.udp_socket*, %struct.udp_socket** %2, align 8
  %19 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @U_NORD, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %24, %17
  %28 = phi i1 [ true, %17 ], [ %26, %24 ]
  br i1 %28, label %29, label %86

29:                                               ; preds = %27
  %30 = load %struct.udp_socket*, %struct.udp_socket** %2, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @udp_try_read(%struct.udp_socket* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %29
  %36 = load i64, i64* @errno, align 8
  %37 = load i64, i64* @ENOSYS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* @errno, align 8
  %41 = load i64, i64* @EINTR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %35
  br label %17

44:                                               ; preds = %39
  %45 = load i64, i64* @errno, align 8
  %46 = load i64, i64* @EAGAIN, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %17

52:                                               ; preds = %48
  %53 = load i32, i32* @U_NORD, align 4
  %54 = load %struct.udp_socket*, %struct.udp_socket** %2, align 8
  %55 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %86

58:                                               ; preds = %44
  %59 = load i32, i32* @U_ERRQ, align 4
  store i32 %59, i32* %5, align 4
  br label %17

60:                                               ; preds = %29
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  br label %17

67:                                               ; preds = %63
  %68 = load i32, i32* @U_NORD, align 4
  %69 = load %struct.udp_socket*, %struct.udp_socket** %2, align 8
  %70 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %86

73:                                               ; preds = %60
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %79, %73
  br label %84

84:                                               ; preds = %83
  br label %85

85:                                               ; preds = %84
  br label %17

86:                                               ; preds = %67, %52, %27
  %87 = load %struct.udp_socket*, %struct.udp_socket** %2, align 8
  %88 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @U_ERRQ, align 4
  %91 = xor i32 %90, -1
  %92 = and i32 %89, %91
  %93 = load i32, i32* %5, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.udp_socket*, %struct.udp_socket** %2, align 8
  %96 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load %struct.udp_socket*, %struct.udp_socket** %2, align 8
  %98 = getelementptr inbounds %struct.udp_socket, %struct.udp_socket* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* %4, align 4
  %102 = call i32 (i32, i8*, i32, i32, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @udp_try_read(%struct.udp_socket*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
