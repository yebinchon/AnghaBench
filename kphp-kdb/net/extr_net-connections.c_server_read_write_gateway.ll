; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_server_read_write_gateway.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_server_read_write_gateway.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.connection = type { i32 (%struct.connection*)*, %struct.connection*, i32 }

@EVT_FROM_EPOLL = common dso_local global i32 0, align 4
@C_NORW = common dso_local global i32 0, align 4
@EVT_READ = common dso_local global i32 0, align 4
@C_NORD = common dso_local global i32 0, align 4
@EVT_WRITE = common dso_local global i32 0, align 4
@C_NOWR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @server_read_write_gateway(i32 %0, i8* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.connection*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.connection*
  store %struct.connection* %9, %struct.connection** %7, align 8
  %10 = load %struct.connection*, %struct.connection** %7, align 8
  %11 = call i32 @assert(%struct.connection* %10)
  %12 = load %struct.connection*, %struct.connection** %7, align 8
  %13 = getelementptr inbounds %struct.connection, %struct.connection* %12, i32 0, i32 1
  %14 = load %struct.connection*, %struct.connection** %13, align 8
  %15 = call i32 @assert(%struct.connection* %14)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @EVT_FROM_EPOLL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %75

22:                                               ; preds = %3
  %23 = load i32, i32* @EVT_FROM_EPOLL, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @C_NORW, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.connection*, %struct.connection** %7, align 8
  %32 = getelementptr inbounds %struct.connection, %struct.connection* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @EVT_READ, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %22
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @EVT_READ, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @C_NORD, align 4
  %50 = load %struct.connection*, %struct.connection** %7, align 8
  %51 = getelementptr inbounds %struct.connection, %struct.connection* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %48, %41, %22
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @EVT_WRITE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %54
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @EVT_WRITE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %61
  %69 = load i32, i32* @C_NOWR, align 4
  %70 = load %struct.connection*, %struct.connection** %7, align 8
  %71 = getelementptr inbounds %struct.connection, %struct.connection* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %68, %61, %54
  br label %75

75:                                               ; preds = %74, %3
  %76 = load %struct.connection*, %struct.connection** %7, align 8
  %77 = getelementptr inbounds %struct.connection, %struct.connection* %76, i32 0, i32 1
  %78 = load %struct.connection*, %struct.connection** %77, align 8
  %79 = getelementptr inbounds %struct.connection, %struct.connection* %78, i32 0, i32 0
  %80 = load i32 (%struct.connection*)*, i32 (%struct.connection*)** %79, align 8
  %81 = load %struct.connection*, %struct.connection** %7, align 8
  %82 = call i32 %80(%struct.connection* %81)
  ret i32 %82
}

declare dso_local i32 @assert(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
