; ModuleID = '/home/carl/AnghaBench/i3/src/extr_sd-daemon.c_sd_is_socket_inet.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_sd-daemon.c_sd_is_socket_inet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sockaddr_union = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_is_socket_inet(i32 %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %union.sockaddr_union, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %5
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @AF_INET, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @AF_INET6, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %116

28:                                               ; preds = %21, %17, %5
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @sd_is_socket_internal(i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %6, align 4
  br label %116

36:                                               ; preds = %28
  %37 = call i32 @memset(%union.sockaddr_union* %12, i32 0, i32 8)
  store i32 8, i32* %13, align 4
  %38 = load i32, i32* %7, align 4
  %39 = bitcast %union.sockaddr_union* %12 to %struct.TYPE_6__*
  %40 = call i64 @getsockname(i32 %38, %struct.TYPE_6__* %39, i32* %13)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @errno, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %116

45:                                               ; preds = %36
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp ult i64 %47, 4
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %116

52:                                               ; preds = %45
  %53 = bitcast %union.sockaddr_union* %12 to %struct.TYPE_6__*
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @AF_INET, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = bitcast %union.sockaddr_union* %12 to %struct.TYPE_6__*
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @AF_INET6, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %116

65:                                               ; preds = %58, %52
  %66 = load i32, i32* %8, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = bitcast %union.sockaddr_union* %12 to %struct.TYPE_6__*
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 0, i32* %6, align 4
  br label %116

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %65
  %77 = load i64, i64* %11, align 8
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %115

79:                                               ; preds = %76
  %80 = bitcast %union.sockaddr_union* %12 to %struct.TYPE_6__*
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @AF_INET, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %79
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = icmp ult i64 %87, 4
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  br label %116

92:                                               ; preds = %85
  %93 = load i64, i64* %11, align 8
  %94 = call i64 @htons(i64 %93)
  %95 = bitcast %union.sockaddr_union* %12 to %struct.TYPE_4__*
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %94, %97
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %6, align 4
  br label %116

100:                                              ; preds = %79
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = icmp ult i64 %102, 4
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %6, align 4
  br label %116

107:                                              ; preds = %100
  %108 = load i64, i64* %11, align 8
  %109 = call i64 @htons(i64 %108)
  %110 = bitcast %union.sockaddr_union* %12 to %struct.TYPE_5__*
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %109, %112
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %6, align 4
  br label %116

115:                                              ; preds = %76
  store i32 1, i32* %6, align 4
  br label %116

116:                                              ; preds = %115, %107, %104, %92, %89, %74, %64, %49, %42, %34, %25
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local i32 @sd_is_socket_internal(i32, i32, i32) #1

declare dso_local i32 @memset(%union.sockaddr_union*, i32, i32) #1

declare dso_local i64 @getsockname(i32, %struct.TYPE_6__*, i32*) #1

declare dso_local i64 @htons(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
