; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_find_target.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_find_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn_target = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.in_addr = type { i64 }

@PRIME_TARGETS = common dso_local global i64 0, align 8
@HTarget = common dso_local global %struct.conn_target** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.conn_target** @find_target(i64 %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.conn_target**, align 8
  %5 = alloca %struct.in_addr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  store i64 %0, i64* %10, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @assert(i64 %12)
  %14 = load i32*, i32** %7, align 8
  %15 = ptrtoint i32* %14 to i64
  %16 = mul i64 %15, 180013754
  %17 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %16, %18
  %20 = load i64, i64* @PRIME_TARGETS, align 8
  %21 = urem i64 %19, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = ptrtoint i32* %23 to i64
  %25 = mul i64 %24, 229354667
  %26 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %25, %27
  %29 = load i64, i64* @PRIME_TARGETS, align 8
  %30 = sub i64 %29, 1
  %31 = urem i64 %28, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = mul i32 %33, 239
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %34, %35
  %37 = zext i32 %36 to i64
  %38 = load i64, i64* @PRIME_TARGETS, align 8
  %39 = urem i64 %37, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = mul i32 %41, 17
  %43 = load i32, i32* %6, align 4
  %44 = add i32 %42, %43
  %45 = zext i32 %44 to i64
  %46 = load i64, i64* @PRIME_TARGETS, align 8
  %47 = sub i64 %46, 1
  %48 = urem i64 %45, %47
  %49 = add i64 %48, 1
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %108, %3
  %52 = load %struct.conn_target**, %struct.conn_target*** @HTarget, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.conn_target*, %struct.conn_target** %52, i64 %54
  %56 = load %struct.conn_target*, %struct.conn_target** %55, align 8
  %57 = icmp ne %struct.conn_target* %56, null
  br i1 %57, label %58, label %109

58:                                               ; preds = %51
  %59 = load %struct.conn_target**, %struct.conn_target*** @HTarget, align 8
  %60 = load i32, i32* %8, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.conn_target*, %struct.conn_target** %59, i64 %61
  %63 = load %struct.conn_target*, %struct.conn_target** %62, align 8
  %64 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %66, %68
  br i1 %69, label %70, label %95

70:                                               ; preds = %58
  %71 = load %struct.conn_target**, %struct.conn_target*** @HTarget, align 8
  %72 = load i32, i32* %8, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.conn_target*, %struct.conn_target** %71, i64 %73
  %75 = load %struct.conn_target*, %struct.conn_target** %74, align 8
  %76 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %70
  %81 = load %struct.conn_target**, %struct.conn_target*** @HTarget, align 8
  %82 = load i32, i32* %8, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.conn_target*, %struct.conn_target** %81, i64 %83
  %85 = load %struct.conn_target*, %struct.conn_target** %84, align 8
  %86 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = icmp eq i32* %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %80
  %91 = load %struct.conn_target**, %struct.conn_target*** @HTarget, align 8
  %92 = load i32, i32* %8, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.conn_target*, %struct.conn_target** %91, i64 %93
  store %struct.conn_target** %94, %struct.conn_target*** %4, align 8
  br label %114

95:                                               ; preds = %80, %70, %58
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %8, align 4
  %98 = add i32 %97, %96
  store i32 %98, i32* %8, align 4
  %99 = zext i32 %98 to i64
  %100 = load i64, i64* @PRIME_TARGETS, align 8
  %101 = icmp uge i64 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load i64, i64* @PRIME_TARGETS, align 8
  %104 = load i32, i32* %8, align 4
  %105 = zext i32 %104 to i64
  %106 = sub i64 %105, %103
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %102, %95
  br label %51

109:                                              ; preds = %51
  %110 = load %struct.conn_target**, %struct.conn_target*** @HTarget, align 8
  %111 = load i32, i32* %8, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.conn_target*, %struct.conn_target** %110, i64 %112
  store %struct.conn_target** %113, %struct.conn_target*** %4, align 8
  br label %114

114:                                              ; preds = %109, %90
  %115 = load %struct.conn_target**, %struct.conn_target*** %4, align 8
  ret %struct.conn_target** %115
}

declare dso_local i32 @assert(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
