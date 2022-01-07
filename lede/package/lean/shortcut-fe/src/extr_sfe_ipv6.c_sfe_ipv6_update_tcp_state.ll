; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_update_tcp_state.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_update_tcp_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_ipv6_connection = type { %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match* }
%struct.sfe_ipv6_connection_match = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sfe_ipv6_tcp_connection_match }
%struct.sfe_ipv6_tcp_connection_match = type { i64, i64, i64 }
%struct.sfe_connection_create = type { i64, i64, i32, i64, i64, i64, i64 }

@SFE_IPV6_CONNECTION_MATCH_FLAG_NO_SEQ_CHECK = common dso_local global i32 0, align 4
@SFE_CREATE_FLAG_NO_SEQ_CHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfe_ipv6_connection*, %struct.sfe_connection_create*)* @sfe_ipv6_update_tcp_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfe_ipv6_update_tcp_state(%struct.sfe_ipv6_connection* %0, %struct.sfe_connection_create* %1) #0 {
  %3 = alloca %struct.sfe_ipv6_connection*, align 8
  %4 = alloca %struct.sfe_connection_create*, align 8
  %5 = alloca %struct.sfe_ipv6_connection_match*, align 8
  %6 = alloca %struct.sfe_ipv6_connection_match*, align 8
  %7 = alloca %struct.sfe_ipv6_tcp_connection_match*, align 8
  %8 = alloca %struct.sfe_ipv6_tcp_connection_match*, align 8
  store %struct.sfe_ipv6_connection* %0, %struct.sfe_ipv6_connection** %3, align 8
  store %struct.sfe_connection_create* %1, %struct.sfe_connection_create** %4, align 8
  %9 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %3, align 8
  %10 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %9, i32 0, i32 1
  %11 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %10, align 8
  store %struct.sfe_ipv6_connection_match* %11, %struct.sfe_ipv6_connection_match** %5, align 8
  %12 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %3, align 8
  %13 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %12, i32 0, i32 0
  %14 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %13, align 8
  store %struct.sfe_ipv6_connection_match* %14, %struct.sfe_ipv6_connection_match** %6, align 8
  %15 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %5, align 8
  %16 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.sfe_ipv6_tcp_connection_match* %17, %struct.sfe_ipv6_tcp_connection_match** %7, align 8
  %18 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %6, align 8
  %19 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.sfe_ipv6_tcp_connection_match* %20, %struct.sfe_ipv6_tcp_connection_match** %8, align 8
  %21 = load %struct.sfe_ipv6_tcp_connection_match*, %struct.sfe_ipv6_tcp_connection_match** %7, align 8
  %22 = getelementptr inbounds %struct.sfe_ipv6_tcp_connection_match, %struct.sfe_ipv6_tcp_connection_match* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %4, align 8
  %25 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %4, align 8
  %30 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.sfe_ipv6_tcp_connection_match*, %struct.sfe_ipv6_tcp_connection_match** %7, align 8
  %33 = getelementptr inbounds %struct.sfe_ipv6_tcp_connection_match, %struct.sfe_ipv6_tcp_connection_match* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %28, %2
  %35 = load %struct.sfe_ipv6_tcp_connection_match*, %struct.sfe_ipv6_tcp_connection_match** %7, align 8
  %36 = getelementptr inbounds %struct.sfe_ipv6_tcp_connection_match, %struct.sfe_ipv6_tcp_connection_match* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %4, align 8
  %39 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %4, align 8
  %45 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.sfe_ipv6_tcp_connection_match*, %struct.sfe_ipv6_tcp_connection_match** %7, align 8
  %48 = getelementptr inbounds %struct.sfe_ipv6_tcp_connection_match, %struct.sfe_ipv6_tcp_connection_match* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %43, %34
  %50 = load %struct.sfe_ipv6_tcp_connection_match*, %struct.sfe_ipv6_tcp_connection_match** %7, align 8
  %51 = getelementptr inbounds %struct.sfe_ipv6_tcp_connection_match, %struct.sfe_ipv6_tcp_connection_match* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %4, align 8
  %54 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %49
  %59 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %4, align 8
  %60 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.sfe_ipv6_tcp_connection_match*, %struct.sfe_ipv6_tcp_connection_match** %7, align 8
  %63 = getelementptr inbounds %struct.sfe_ipv6_tcp_connection_match, %struct.sfe_ipv6_tcp_connection_match* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %58, %49
  %65 = load %struct.sfe_ipv6_tcp_connection_match*, %struct.sfe_ipv6_tcp_connection_match** %8, align 8
  %66 = getelementptr inbounds %struct.sfe_ipv6_tcp_connection_match, %struct.sfe_ipv6_tcp_connection_match* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %4, align 8
  %69 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %67, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %4, align 8
  %74 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.sfe_ipv6_tcp_connection_match*, %struct.sfe_ipv6_tcp_connection_match** %8, align 8
  %77 = getelementptr inbounds %struct.sfe_ipv6_tcp_connection_match, %struct.sfe_ipv6_tcp_connection_match* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %72, %64
  %79 = load %struct.sfe_ipv6_tcp_connection_match*, %struct.sfe_ipv6_tcp_connection_match** %8, align 8
  %80 = getelementptr inbounds %struct.sfe_ipv6_tcp_connection_match, %struct.sfe_ipv6_tcp_connection_match* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %4, align 8
  %83 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %81, %84
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %78
  %88 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %4, align 8
  %89 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.sfe_ipv6_tcp_connection_match*, %struct.sfe_ipv6_tcp_connection_match** %8, align 8
  %92 = getelementptr inbounds %struct.sfe_ipv6_tcp_connection_match, %struct.sfe_ipv6_tcp_connection_match* %91, i32 0, i32 2
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %87, %78
  %94 = load %struct.sfe_ipv6_tcp_connection_match*, %struct.sfe_ipv6_tcp_connection_match** %8, align 8
  %95 = getelementptr inbounds %struct.sfe_ipv6_tcp_connection_match, %struct.sfe_ipv6_tcp_connection_match* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %4, align 8
  %98 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %96, %99
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %93
  %103 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %4, align 8
  %104 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.sfe_ipv6_tcp_connection_match*, %struct.sfe_ipv6_tcp_connection_match** %8, align 8
  %107 = getelementptr inbounds %struct.sfe_ipv6_tcp_connection_match, %struct.sfe_ipv6_tcp_connection_match* %106, i32 0, i32 1
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %102, %93
  %109 = load i32, i32* @SFE_IPV6_CONNECTION_MATCH_FLAG_NO_SEQ_CHECK, align 4
  %110 = xor i32 %109, -1
  %111 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %5, align 8
  %112 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load i32, i32* @SFE_IPV6_CONNECTION_MATCH_FLAG_NO_SEQ_CHECK, align 4
  %116 = xor i32 %115, -1
  %117 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %6, align 8
  %118 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %119, %116
  store i32 %120, i32* %118, align 8
  %121 = load %struct.sfe_connection_create*, %struct.sfe_connection_create** %4, align 8
  %122 = getelementptr inbounds %struct.sfe_connection_create, %struct.sfe_connection_create* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @SFE_CREATE_FLAG_NO_SEQ_CHECK, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %108
  %128 = load i32, i32* @SFE_IPV6_CONNECTION_MATCH_FLAG_NO_SEQ_CHECK, align 4
  %129 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %5, align 8
  %130 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 8
  %133 = load i32, i32* @SFE_IPV6_CONNECTION_MATCH_FLAG_NO_SEQ_CHECK, align 4
  %134 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %6, align 8
  %135 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %127, %108
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
