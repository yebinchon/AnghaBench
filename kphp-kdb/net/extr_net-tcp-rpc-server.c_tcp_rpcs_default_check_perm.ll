; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-tcp-rpc-server.c_tcp_rpcs_default_check_perm.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-tcp-rpc-server.c_tcp_rpcs_default_check_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i32, i64, i64 }

@C_IPV6 = common dso_local global i32 0, align 4
@aes_initialized = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_rpcs_default_check_perm(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i32 -1, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  %6 = load %struct.connection*, %struct.connection** %3, align 8
  %7 = getelementptr inbounds %struct.connection, %struct.connection* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @C_IPV6, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %54

12:                                               ; preds = %1
  %13 = load %struct.connection*, %struct.connection** %3, align 8
  %14 = getelementptr inbounds %struct.connection, %struct.connection* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @is_ipv6_localhost(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.connection*, %struct.connection** %3, align 8
  %20 = getelementptr inbounds %struct.connection, %struct.connection* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @is_ipv6_localhost(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %53

25:                                               ; preds = %18, %12
  %26 = load %struct.connection*, %struct.connection** %3, align 8
  %27 = getelementptr inbounds %struct.connection, %struct.connection* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.connection*, %struct.connection** %3, align 8
  %32 = getelementptr inbounds %struct.connection, %struct.connection* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %30, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %92

38:                                               ; preds = %25
  %39 = load %struct.connection*, %struct.connection** %3, align 8
  %40 = getelementptr inbounds %struct.connection, %struct.connection* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.connection*, %struct.connection** %3, align 8
  %46 = getelementptr inbounds %struct.connection, %struct.connection* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i32*
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = xor i32 %44, %50
  store i32 %51, i32* %4, align 4
  store i32 65535, i32* %5, align 4
  br label %52

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %24
  br label %75

54:                                               ; preds = %1
  %55 = load %struct.connection*, %struct.connection** %3, align 8
  %56 = getelementptr inbounds %struct.connection, %struct.connection* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, -16777216
  %59 = icmp ne i32 %58, 167772160
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.connection*, %struct.connection** %3, align 8
  %62 = getelementptr inbounds %struct.connection, %struct.connection* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, -16777216
  %65 = icmp ne i32 %64, 2130706432
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %92

67:                                               ; preds = %60, %54
  %68 = load %struct.connection*, %struct.connection** %3, align 8
  %69 = getelementptr inbounds %struct.connection, %struct.connection* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.connection*, %struct.connection** %3, align 8
  %72 = getelementptr inbounds %struct.connection, %struct.connection* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = xor i32 %70, %73
  store i32 %74, i32* %4, align 4
  store i32 -65536, i32* %5, align 4
  br label %75

75:                                               ; preds = %67, %53
  %76 = load i64, i64* @aes_initialized, align 8
  %77 = icmp sle i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %5, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 0, i32 1
  store i32 %84, i32* %2, align 4
  br label %92

85:                                               ; preds = %75
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* %5, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 2, i32 3
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %85, %78, %66, %37
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i64 @is_ipv6_localhost(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
