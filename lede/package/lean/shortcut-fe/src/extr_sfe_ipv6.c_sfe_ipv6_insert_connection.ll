; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_insert_connection.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_insert_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_ipv6 = type { i32, %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** }
%struct.sfe_ipv6_connection = type { i32, i32, %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection*, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfe_ipv6*, %struct.sfe_ipv6_connection*)* @sfe_ipv6_insert_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfe_ipv6_insert_connection(%struct.sfe_ipv6* %0, %struct.sfe_ipv6_connection* %1) #0 {
  %3 = alloca %struct.sfe_ipv6*, align 8
  %4 = alloca %struct.sfe_ipv6_connection*, align 8
  %5 = alloca %struct.sfe_ipv6_connection**, align 8
  %6 = alloca %struct.sfe_ipv6_connection*, align 8
  %7 = alloca i32, align 4
  store %struct.sfe_ipv6* %0, %struct.sfe_ipv6** %3, align 8
  store %struct.sfe_ipv6_connection* %1, %struct.sfe_ipv6_connection** %4, align 8
  %8 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %4, align 8
  %9 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %8, i32 0, i32 10
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %4, align 8
  %12 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %11, i32 0, i32 9
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %4, align 8
  %15 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %4, align 8
  %18 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %4, align 8
  %21 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @sfe_ipv6_get_connection_hash(i32 %10, i32 %13, i32 %16, i32 %19, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %3, align 8
  %25 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %24, i32 0, i32 3
  %26 = load %struct.sfe_ipv6_connection**, %struct.sfe_ipv6_connection*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %26, i64 %28
  store %struct.sfe_ipv6_connection** %29, %struct.sfe_ipv6_connection*** %5, align 8
  %30 = load %struct.sfe_ipv6_connection**, %struct.sfe_ipv6_connection*** %5, align 8
  %31 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %30, align 8
  store %struct.sfe_ipv6_connection* %31, %struct.sfe_ipv6_connection** %6, align 8
  %32 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %4, align 8
  %33 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %32, i32 0, i32 5
  store %struct.sfe_ipv6_connection* null, %struct.sfe_ipv6_connection** %33, align 8
  %34 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %6, align 8
  %35 = icmp ne %struct.sfe_ipv6_connection* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %4, align 8
  %38 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %6, align 8
  %39 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %38, i32 0, i32 5
  store %struct.sfe_ipv6_connection* %37, %struct.sfe_ipv6_connection** %39, align 8
  br label %40

40:                                               ; preds = %36, %2
  %41 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %6, align 8
  %42 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %4, align 8
  %43 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %42, i32 0, i32 4
  store %struct.sfe_ipv6_connection* %41, %struct.sfe_ipv6_connection** %43, align 8
  %44 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %4, align 8
  %45 = load %struct.sfe_ipv6_connection**, %struct.sfe_ipv6_connection*** %5, align 8
  store %struct.sfe_ipv6_connection* %44, %struct.sfe_ipv6_connection** %45, align 8
  %46 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %3, align 8
  %47 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %46, i32 0, i32 1
  %48 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %47, align 8
  %49 = icmp ne %struct.sfe_ipv6_connection* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %40
  %51 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %3, align 8
  %52 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %51, i32 0, i32 1
  %53 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %52, align 8
  %54 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %4, align 8
  %55 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %54, i32 0, i32 3
  store %struct.sfe_ipv6_connection* %53, %struct.sfe_ipv6_connection** %55, align 8
  %56 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %4, align 8
  %57 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %3, align 8
  %58 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %57, i32 0, i32 1
  %59 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %58, align 8
  %60 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %59, i32 0, i32 2
  store %struct.sfe_ipv6_connection* %56, %struct.sfe_ipv6_connection** %60, align 8
  br label %67

61:                                               ; preds = %40
  %62 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %4, align 8
  %63 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %62, i32 0, i32 3
  store %struct.sfe_ipv6_connection* null, %struct.sfe_ipv6_connection** %63, align 8
  %64 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %4, align 8
  %65 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %3, align 8
  %66 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %65, i32 0, i32 2
  store %struct.sfe_ipv6_connection* %64, %struct.sfe_ipv6_connection** %66, align 8
  br label %67

67:                                               ; preds = %61, %50
  %68 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %4, align 8
  %69 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %3, align 8
  %70 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %69, i32 0, i32 1
  store %struct.sfe_ipv6_connection* %68, %struct.sfe_ipv6_connection** %70, align 8
  %71 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %4, align 8
  %72 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %71, i32 0, i32 2
  store %struct.sfe_ipv6_connection* null, %struct.sfe_ipv6_connection** %72, align 8
  %73 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %3, align 8
  %74 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %3, align 8
  %78 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %4, align 8
  %79 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @sfe_ipv6_insert_connection_match(%struct.sfe_ipv6* %77, i32 %80)
  %82 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %3, align 8
  %83 = load %struct.sfe_ipv6_connection*, %struct.sfe_ipv6_connection** %4, align 8
  %84 = getelementptr inbounds %struct.sfe_ipv6_connection, %struct.sfe_ipv6_connection* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @sfe_ipv6_insert_connection_match(%struct.sfe_ipv6* %82, i32 %85)
  ret void
}

declare dso_local i32 @sfe_ipv6_get_connection_hash(i32, i32, i32, i32, i32) #1

declare dso_local i32 @sfe_ipv6_insert_connection_match(%struct.sfe_ipv6*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
