; ModuleID = '/home/carl/AnghaBench/lede/package/network/utils/owipcalc/src/extr_owipcalc.c_cidr_parse.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/utils/owipcalc/src/extr_owipcalc.c_cidr_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cidr = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"attempt to '%s' %s with %s address\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ipv4\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ipv6\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cidr* (i8*, i8*, i32)* @cidr_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cidr* @cidr_parse(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.cidr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cidr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @strtoul(i8* %12, i8** %8, i32 0)
  store i32 %13, i32* %11, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ugt i8* %14, %15
  br i1 %16, label %17, label %74

17:                                               ; preds = %3
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %74

22:                                               ; preds = %17
  %23 = call %struct.cidr* @malloc(i32 24)
  store %struct.cidr* %23, %struct.cidr** %9, align 8
  %24 = load %struct.cidr*, %struct.cidr** %9, align 8
  %25 = icmp ne %struct.cidr* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store %struct.cidr* null, %struct.cidr** %4, align 8
  br label %111

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @AF_INET, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i32, i32* @AF_INET, align 4
  %33 = load %struct.cidr*, %struct.cidr** %9, align 8
  %34 = getelementptr inbounds %struct.cidr, %struct.cidr* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.cidr*, %struct.cidr** %9, align 8
  %37 = getelementptr inbounds %struct.cidr, %struct.cidr* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @htonl(i32 %38)
  %40 = load %struct.cidr*, %struct.cidr** %9, align 8
  %41 = getelementptr inbounds %struct.cidr, %struct.cidr* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 8
  br label %72

44:                                               ; preds = %27
  %45 = load i32, i32* @AF_INET6, align 4
  %46 = load %struct.cidr*, %struct.cidr** %9, align 8
  %47 = getelementptr inbounds %struct.cidr, %struct.cidr* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.cidr*, %struct.cidr** %9, align 8
  %50 = getelementptr inbounds %struct.cidr, %struct.cidr* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %68, %44
  %52 = load i32, i32* %10, align 4
  %53 = icmp sle i32 %52, 15
  br i1 %53, label %54, label %71

54:                                               ; preds = %51
  %55 = load i32, i32* %11, align 4
  %56 = srem i32 %55, 256
  %57 = load %struct.cidr*, %struct.cidr** %9, align 8
  %58 = getelementptr inbounds %struct.cidr, %struct.cidr* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sub nsw i32 15, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  store i32 %56, i32* %65, align 4
  %66 = load i32, i32* %11, align 4
  %67 = ashr i32 %66, 8
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %54
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %51

71:                                               ; preds = %51
  br label %72

72:                                               ; preds = %71, %31
  %73 = load %struct.cidr*, %struct.cidr** %9, align 8
  store %struct.cidr* %73, %struct.cidr** %4, align 8
  br label %111

74:                                               ; preds = %17, %3
  %75 = load i8*, i8** %6, align 8
  %76 = call i64 @strchr(i8* %75, i8 signext 58)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i8*, i8** %6, align 8
  %80 = call %struct.cidr* @cidr_parse6(i8* %79)
  store %struct.cidr* %80, %struct.cidr** %9, align 8
  br label %84

81:                                               ; preds = %74
  %82 = load i8*, i8** %6, align 8
  %83 = call %struct.cidr* @cidr_parse4(i8* %82)
  store %struct.cidr* %83, %struct.cidr** %9, align 8
  br label %84

84:                                               ; preds = %81, %78
  %85 = load %struct.cidr*, %struct.cidr** %9, align 8
  %86 = icmp ne %struct.cidr* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  store %struct.cidr* null, %struct.cidr** %4, align 8
  br label %111

88:                                               ; preds = %84
  %89 = load %struct.cidr*, %struct.cidr** %9, align 8
  %90 = getelementptr inbounds %struct.cidr, %struct.cidr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %88
  %95 = load i32, i32* @stderr, align 4
  %96 = load i8*, i8** %5, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @AF_INET, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @AF_INET, align 4
  %104 = icmp ne i32 %102, %103
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %107 = call i32 @fprintf(i32 %95, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %96, i8* %101, i8* %106)
  %108 = call i32 @exit(i32 4) #3
  unreachable

109:                                              ; preds = %88
  %110 = load %struct.cidr*, %struct.cidr** %9, align 8
  store %struct.cidr* %110, %struct.cidr** %4, align 8
  br label %111

111:                                              ; preds = %109, %87, %72, %26
  %112 = load %struct.cidr*, %struct.cidr** %4, align 8
  ret %struct.cidr* %112
}

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local %struct.cidr* @malloc(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local %struct.cidr* @cidr_parse6(i8*) #1

declare dso_local %struct.cidr* @cidr_parse4(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
