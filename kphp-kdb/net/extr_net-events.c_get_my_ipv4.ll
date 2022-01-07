; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-events.c_get_my_ipv4.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-events.c_get_my_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { i8*, i64, %struct.TYPE_3__*, %struct.ifaddrs* }
%struct.TYPE_3__ = type { i64 }
%struct.sockaddr_in = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"getifaddrs()\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"using main IP %d.%d.%d.%d/%d at interface %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_my_ipv4() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ifaddrs*, align 8
  %3 = alloca %struct.ifaddrs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %9 = call i64 @getifaddrs(%struct.ifaddrs** %2)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %93

13:                                               ; preds = %0
  %14 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  store %struct.ifaddrs* %14, %struct.ifaddrs** %3, align 8
  br label %15

15:                                               ; preds = %65, %13
  %16 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %17 = icmp ne %struct.ifaddrs* %16, null
  br i1 %17, label %18, label %69

18:                                               ; preds = %15
  %19 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %20 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AF_INET, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %65

27:                                               ; preds = %18
  %28 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %29 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @strncmp(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %65

34:                                               ; preds = %27
  %35 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %36 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = bitcast %struct.TYPE_3__* %37 to %struct.sockaddr_in*
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ntohl(i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %44 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.sockaddr_in*
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ntohl(i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, -16777216
  %53 = icmp eq i32 %52, 167772160
  br i1 %53, label %54, label %64

54:                                               ; preds = %34
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %5, align 4
  %61 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %62 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %6, align 8
  br label %64

64:                                               ; preds = %58, %54, %34
  br label %65

65:                                               ; preds = %64, %33, %26
  %66 = load %struct.ifaddrs*, %struct.ifaddrs** %3, align 8
  %67 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %66, i32 0, i32 3
  %68 = load %struct.ifaddrs*, %struct.ifaddrs** %67, align 8
  store %struct.ifaddrs* %68, %struct.ifaddrs** %3, align 8
  br label %15

69:                                               ; preds = %15
  %70 = load i32, i32* %4, align 4
  %71 = lshr i32 %70, 24
  %72 = load i32, i32* %4, align 4
  %73 = lshr i32 %72, 16
  %74 = and i32 %73, 255
  %75 = load i32, i32* %4, align 4
  %76 = lshr i32 %75, 8
  %77 = and i32 %76, 255
  %78 = load i32, i32* %4, align 4
  %79 = and i32 %78, 255
  %80 = load i32, i32* %5, align 4
  %81 = xor i32 %80, -1
  %82 = call i32 @llvm.ctlz.i32(i32 %81, i1 true)
  %83 = load i8*, i8** %6, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %69
  br label %87

86:                                               ; preds = %69
  br label %87

87:                                               ; preds = %86, %85
  %88 = phi i8* [ %83, %85 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %86 ]
  %89 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %74, i32 %77, i32 %79, i32 %82, i8* %88)
  %90 = load %struct.ifaddrs*, %struct.ifaddrs** %2, align 8
  %91 = call i32 @freeifaddrs(%struct.ifaddrs* %90)
  %92 = load i32, i32* %4, align 4
  store i32 %92, i32* %1, align 4
  br label %93

93:                                               ; preds = %87, %11
  %94 = load i32, i32* %1, align 4
  ret i32 %94
}

declare dso_local i64 @getifaddrs(%struct.ifaddrs**) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, i32, i32, i32, i8*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

declare dso_local i32 @freeifaddrs(%struct.ifaddrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
