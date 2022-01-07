; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_find_sfe_ipv4_connection.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_find_sfe_ipv4_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_ipv4_connection = type { i64, i64, i64, i64, i64, %struct.sfe_ipv4_connection* }
%struct.sfe_ipv4 = type { %struct.sfe_ipv4_connection** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sfe_ipv4_connection* (%struct.sfe_ipv4*, i64, i64, i64, i64, i64)* @sfe_ipv4_find_sfe_ipv4_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sfe_ipv4_connection* @sfe_ipv4_find_sfe_ipv4_connection(%struct.sfe_ipv4* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.sfe_ipv4_connection*, align 8
  %8 = alloca %struct.sfe_ipv4*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.sfe_ipv4_connection*, align 8
  %15 = alloca i32, align 4
  store %struct.sfe_ipv4* %0, %struct.sfe_ipv4** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* %12, align 8
  %20 = load i64, i64* %13, align 8
  %21 = call i32 @sfe_ipv4_get_connection_hash(i64 %16, i64 %17, i64 %18, i64 %19, i64 %20)
  store i32 %21, i32* %15, align 4
  %22 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %8, align 8
  %23 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %22, i32 0, i32 0
  %24 = load %struct.sfe_ipv4_connection**, %struct.sfe_ipv4_connection*** %23, align 8
  %25 = load i32, i32* %15, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %24, i64 %26
  %28 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %27, align 8
  store %struct.sfe_ipv4_connection* %28, %struct.sfe_ipv4_connection** %14, align 8
  %29 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %14, align 8
  %30 = icmp ne %struct.sfe_ipv4_connection* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %6
  store %struct.sfe_ipv4_connection* null, %struct.sfe_ipv4_connection** %7, align 8
  br label %112

36:                                               ; preds = %6
  %37 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %14, align 8
  %38 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %36
  %43 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %14, align 8
  %44 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %13, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %42
  %49 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %14, align 8
  %50 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %48
  %55 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %14, align 8
  %56 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %12, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %14, align 8
  %62 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %14, align 8
  store %struct.sfe_ipv4_connection* %67, %struct.sfe_ipv4_connection** %7, align 8
  br label %112

68:                                               ; preds = %60, %54, %48, %42, %36
  br label %69

69:                                               ; preds = %108, %68
  %70 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %14, align 8
  %71 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %70, i32 0, i32 5
  %72 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %71, align 8
  store %struct.sfe_ipv4_connection* %72, %struct.sfe_ipv4_connection** %14, align 8
  br label %73

73:                                               ; preds = %69
  %74 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %14, align 8
  %75 = icmp ne %struct.sfe_ipv4_connection* %74, null
  br i1 %75, label %76, label %108

76:                                               ; preds = %73
  %77 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %14, align 8
  %78 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %11, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %106, label %82

82:                                               ; preds = %76
  %83 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %14, align 8
  %84 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %13, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %106, label %88

88:                                               ; preds = %82
  %89 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %14, align 8
  %90 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %10, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %106, label %94

94:                                               ; preds = %88
  %95 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %14, align 8
  %96 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %12, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %94
  %101 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %14, align 8
  %102 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %9, align 8
  %105 = icmp ne i64 %103, %104
  br label %106

106:                                              ; preds = %100, %94, %88, %82, %76
  %107 = phi i1 [ true, %94 ], [ true, %88 ], [ true, %82 ], [ true, %76 ], [ %105, %100 ]
  br label %108

108:                                              ; preds = %106, %73
  %109 = phi i1 [ false, %73 ], [ %107, %106 ]
  br i1 %109, label %69, label %110

110:                                              ; preds = %108
  %111 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %14, align 8
  store %struct.sfe_ipv4_connection* %111, %struct.sfe_ipv4_connection** %7, align 8
  br label %112

112:                                              ; preds = %110, %66, %35
  %113 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %7, align 8
  ret %struct.sfe_ipv4_connection* %113
}

declare dso_local i32 @sfe_ipv4_get_connection_hash(i64, i64, i64, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
