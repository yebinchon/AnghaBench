; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_find_connection.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_find_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_ipv6_connection = type { i64, i64, i64, %struct.sfe_ipv6_connection*, i32, i32 }
%struct.sfe_ipv6 = type { %struct.sfe_ipv6_connection** }
%struct.sfe_ipv6_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sfe_ipv6_connection* (%struct.sfe_ipv6*, i64, %struct.sfe_ipv6_addr*, i64, %struct.sfe_ipv6_addr*, i64)* @sfe_ipv6_find_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sfe_ipv6_connection* @sfe_ipv6_find_connection(%struct.sfe_ipv6* %0, i64 %1, %struct.sfe_ipv6_addr* %2, i64 %3, %struct.sfe_ipv6_addr* %4, i64 %5) #0 {
  %7 = alloca %struct.sfe_ipv6_connection*, align 8
  %8 = alloca %struct.sfe_ipv6*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sfe_ipv6_addr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.sfe_ipv6_addr*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.sfe_ipv6_connection*, align 8
  %15 = alloca i32, align 4
  store %struct.sfe_ipv6* %0, %struct.sfe_ipv6** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.sfe_ipv6_addr* %2, %struct.sfe_ipv6_addr** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.sfe_ipv6_addr* %4, %struct.sfe_ipv6_addr** %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load %struct.sfe_ipv6_addr*, %struct.sfe_ipv6_addr** %10, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load %struct.sfe_ipv6_addr*, %struct.sfe_ipv6_addr** %12, align 8
  %20 = load i64, i64* %13, align 8
  %21 = call i32 @sfe_ipv6_get_connection_hash(i64 %16, %struct.sfe_ipv6_addr* %17, i64 %18, %struct.sfe_ipv6_addr* %19, i64 %20)
  store i32 %21, i32* %15, align 4
  %22 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %8, align 8
  %23 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %22, i32 0, i32 0
  %24 = load %struct.sfe_ipv6_connection**, %struct.sfe_ipv6_connection*** %23, align 8
  %25 = load i32, i32* %15, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %24, i64 %26
  %28 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %27, align 8
  store %struct.sfe_ipv6_connection* %28, %struct.sfe_ipv6_connection** %14, align 8
  %29 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %14, align 8
  %30 = icmp ne %struct.sfe_ipv6_connection* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %6
  store %struct.sfe_ipv6_connection* null, %struct.sfe_ipv6_connection** %7, align 8
  br label %116

36:                                               ; preds = %6
  %37 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %14, align 8
  %38 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %70

42:                                               ; preds = %36
  %43 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %14, align 8
  %44 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %13, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %42
  %49 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %14, align 8
  %50 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sfe_ipv6_addr*, %struct.sfe_ipv6_addr** %10, align 8
  %53 = call i64 @sfe_ipv6_addr_equal(i32 %51, %struct.sfe_ipv6_addr* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %48
  %56 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %14, align 8
  %57 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.sfe_ipv6_addr*, %struct.sfe_ipv6_addr** %12, align 8
  %60 = call i64 @sfe_ipv6_addr_equal(i32 %58, %struct.sfe_ipv6_addr* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %14, align 8
  %64 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %14, align 8
  store %struct.sfe_ipv6_connection* %69, %struct.sfe_ipv6_connection** %7, align 8
  br label %116

70:                                               ; preds = %62, %55, %48, %42, %36
  br label %71

71:                                               ; preds = %112, %70
  %72 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %14, align 8
  %73 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %72, i32 0, i32 3
  %74 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %73, align 8
  store %struct.sfe_ipv6_connection* %74, %struct.sfe_ipv6_connection** %14, align 8
  br label %75

75:                                               ; preds = %71
  %76 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %14, align 8
  %77 = icmp ne %struct.sfe_ipv6_connection* %76, null
  br i1 %77, label %78, label %112

78:                                               ; preds = %75
  %79 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %14, align 8
  %80 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %11, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %110, label %84

84:                                               ; preds = %78
  %85 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %14, align 8
  %86 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %13, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %110, label %90

90:                                               ; preds = %84
  %91 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %14, align 8
  %92 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.sfe_ipv6_addr*, %struct.sfe_ipv6_addr** %10, align 8
  %95 = call i64 @sfe_ipv6_addr_equal(i32 %93, %struct.sfe_ipv6_addr* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %90
  %98 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %14, align 8
  %99 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.sfe_ipv6_addr*, %struct.sfe_ipv6_addr** %12, align 8
  %102 = call i64 @sfe_ipv6_addr_equal(i32 %100, %struct.sfe_ipv6_addr* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %14, align 8
  %106 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %9, align 8
  %109 = icmp ne i64 %107, %108
  br label %110

110:                                              ; preds = %104, %97, %90, %84, %78
  %111 = phi i1 [ true, %97 ], [ true, %90 ], [ true, %84 ], [ true, %78 ], [ %109, %104 ]
  br label %112

112:                                              ; preds = %110, %75
  %113 = phi i1 [ false, %75 ], [ %111, %110 ]
  br i1 %113, label %71, label %114

114:                                              ; preds = %112
  %115 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %14, align 8
  store %struct.sfe_ipv6_connection* %115, %struct.sfe_ipv6_connection** %7, align 8
  br label %116

116:                                              ; preds = %114, %68, %35
  %117 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %7, align 8
  ret %struct.sfe_ipv6_connection* %117
}

declare dso_local i32 @sfe_ipv6_get_connection_hash(i64, %struct.sfe_ipv6_addr*, i64, %struct.sfe_ipv6_addr*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @sfe_ipv6_addr_equal(i32, %struct.sfe_ipv6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
