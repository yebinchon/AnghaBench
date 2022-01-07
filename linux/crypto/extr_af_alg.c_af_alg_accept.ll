; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_af_alg.c_af_alg_accept.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_af_alg.c_af_alg_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.socket = type { i32, i32 }
%struct.alg_sock = type { i32, %struct.af_alg_type*, %struct.sock*, i32, i32 }
%struct.af_alg_type = type { i32 (i32, %struct.sock*)*, i32 (i32, %struct.sock*)*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PF_ALG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@alg_proto = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@SS_CONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @af_alg_accept(%struct.sock* %0, %struct.socket* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.alg_sock*, align 8
  %8 = alloca %struct.af_alg_type*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call %struct.alg_sock* @alg_sk(%struct.sock* %12)
  store %struct.alg_sock* %13, %struct.alg_sock** %7, align 8
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call i32 @lock_sock(%struct.sock* %14)
  %16 = load %struct.alg_sock*, %struct.alg_sock** %7, align 8
  %17 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %16, i32 0, i32 1
  %18 = load %struct.af_alg_type*, %struct.af_alg_type** %17, align 8
  store %struct.af_alg_type* %18, %struct.af_alg_type** %8, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %11, align 4
  %21 = load %struct.af_alg_type*, %struct.af_alg_type** %8, align 8
  %22 = icmp ne %struct.af_alg_type* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %126

24:                                               ; preds = %3
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = call i32 @sock_net(%struct.sock* %25)
  %27 = load i32, i32* @PF_ALG, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call %struct.sock* @sk_alloc(i32 %26, i32 %27, i32 %28, i32* @alg_proto, i32 %29)
  store %struct.sock* %30, %struct.sock** %9, align 8
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %11, align 4
  %33 = load %struct.sock*, %struct.sock** %9, align 8
  %34 = icmp ne %struct.sock* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %24
  br label %126

36:                                               ; preds = %24
  %37 = load %struct.socket*, %struct.socket** %5, align 8
  %38 = load %struct.sock*, %struct.sock** %9, align 8
  %39 = call i32 @sock_init_data(%struct.socket* %37, %struct.sock* %38)
  %40 = load %struct.sock*, %struct.sock** %9, align 8
  %41 = load %struct.socket*, %struct.socket** %5, align 8
  %42 = call i32 @security_sock_graft(%struct.sock* %40, %struct.socket* %41)
  %43 = load %struct.sock*, %struct.sock** %4, align 8
  %44 = load %struct.sock*, %struct.sock** %9, align 8
  %45 = call i32 @security_sk_clone(%struct.sock* %43, %struct.sock* %44)
  %46 = load %struct.af_alg_type*, %struct.af_alg_type** %8, align 8
  %47 = getelementptr inbounds %struct.af_alg_type, %struct.af_alg_type* %46, i32 0, i32 0
  %48 = load i32 (i32, %struct.sock*)*, i32 (i32, %struct.sock*)** %47, align 8
  %49 = load %struct.alg_sock*, %struct.alg_sock** %7, align 8
  %50 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sock*, %struct.sock** %9, align 8
  %53 = call i32 %48(i32 %51, %struct.sock* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @ENOKEY, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp eq i32 %54, %56
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %36
  %62 = load %struct.af_alg_type*, %struct.af_alg_type** %8, align 8
  %63 = getelementptr inbounds %struct.af_alg_type, %struct.af_alg_type* %62, i32 0, i32 1
  %64 = load i32 (i32, %struct.sock*)*, i32 (i32, %struct.sock*)** %63, align 8
  %65 = icmp ne i32 (i32, %struct.sock*)* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load %struct.af_alg_type*, %struct.af_alg_type** %8, align 8
  %68 = getelementptr inbounds %struct.af_alg_type, %struct.af_alg_type* %67, i32 0, i32 1
  %69 = load i32 (i32, %struct.sock*)*, i32 (i32, %struct.sock*)** %68, align 8
  %70 = load %struct.alg_sock*, %struct.alg_sock** %7, align 8
  %71 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sock*, %struct.sock** %9, align 8
  %74 = call i32 %69(i32 %72, %struct.sock* %73)
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %66, %61, %36
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %126

79:                                               ; preds = %75
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %79
  %83 = load %struct.alg_sock*, %struct.alg_sock** %7, align 8
  %84 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  %87 = icmp ne i32 %85, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %82, %79
  %89 = load %struct.sock*, %struct.sock** %4, align 8
  %90 = call i32 @sock_hold(%struct.sock* %89)
  br label %91

91:                                               ; preds = %88, %82
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.alg_sock*, %struct.alg_sock** %7, align 8
  %94 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load %struct.sock*, %struct.sock** %4, align 8
  %98 = load %struct.sock*, %struct.sock** %9, align 8
  %99 = call %struct.alg_sock* @alg_sk(%struct.sock* %98)
  %100 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %99, i32 0, i32 2
  store %struct.sock* %97, %struct.sock** %100, align 8
  %101 = load %struct.af_alg_type*, %struct.af_alg_type** %8, align 8
  %102 = load %struct.sock*, %struct.sock** %9, align 8
  %103 = call %struct.alg_sock* @alg_sk(%struct.sock* %102)
  %104 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %103, i32 0, i32 1
  store %struct.af_alg_type* %101, %struct.af_alg_type** %104, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.sock*, %struct.sock** %9, align 8
  %107 = call %struct.alg_sock* @alg_sk(%struct.sock* %106)
  %108 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 8
  %109 = load %struct.af_alg_type*, %struct.af_alg_type** %8, align 8
  %110 = getelementptr inbounds %struct.af_alg_type, %struct.af_alg_type* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.socket*, %struct.socket** %5, align 8
  %113 = getelementptr inbounds %struct.socket, %struct.socket* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @SS_CONNECTED, align 4
  %115 = load %struct.socket*, %struct.socket** %5, align 8
  %116 = getelementptr inbounds %struct.socket, %struct.socket* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %91
  %120 = load %struct.af_alg_type*, %struct.af_alg_type** %8, align 8
  %121 = getelementptr inbounds %struct.af_alg_type, %struct.af_alg_type* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.socket*, %struct.socket** %5, align 8
  %124 = getelementptr inbounds %struct.socket, %struct.socket* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %119, %91
  store i32 0, i32* %11, align 4
  br label %126

126:                                              ; preds = %125, %78, %35, %23
  %127 = load %struct.sock*, %struct.sock** %4, align 8
  %128 = call i32 @release_sock(%struct.sock* %127)
  %129 = load i32, i32* %11, align 4
  ret i32 %129
}

declare dso_local %struct.alg_sock* @alg_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.sock* @sk_alloc(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local i32 @security_sock_graft(%struct.sock*, %struct.socket*) #1

declare dso_local i32 @security_sk_clone(%struct.sock*, %struct.sock*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
