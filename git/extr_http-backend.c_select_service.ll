; ModuleID = '/home/carl/AnghaBench/git/extr_http-backend.c_select_service.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-backend.c_select_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_service = type { i8*, i64 }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"git-\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Unsupported service: '%s'\00", align 1
@rpc_service = common dso_local global %struct.rpc_service* null, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"REMOTE_USER\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Service not enabled: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_service* (%struct.strbuf*, i8*)* @select_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_service* @select_service(%struct.strbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rpc_service*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rpc_service*, align 8
  %9 = alloca i8*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.rpc_service* null, %struct.rpc_service** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @skip_prefix(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %5)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @forbidden(%struct.strbuf* %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  br label %17

17:                                               ; preds = %13, %2
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %37, %17
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.rpc_service*, %struct.rpc_service** @rpc_service, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.rpc_service* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %18
  %24 = load %struct.rpc_service*, %struct.rpc_service** @rpc_service, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.rpc_service, %struct.rpc_service* %24, i64 %26
  store %struct.rpc_service* %27, %struct.rpc_service** %8, align 8
  %28 = load %struct.rpc_service*, %struct.rpc_service** %8, align 8
  %29 = getelementptr inbounds %struct.rpc_service, %struct.rpc_service* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @strcmp(i8* %30, i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %23
  %35 = load %struct.rpc_service*, %struct.rpc_service** %8, align 8
  store %struct.rpc_service* %35, %struct.rpc_service** %6, align 8
  br label %40

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %18

40:                                               ; preds = %34, %18
  %41 = load %struct.rpc_service*, %struct.rpc_service** %6, align 8
  %42 = icmp ne %struct.rpc_service* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @forbidden(%struct.strbuf* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %43, %40
  %48 = load %struct.rpc_service*, %struct.rpc_service** %6, align 8
  %49 = getelementptr inbounds %struct.rpc_service, %struct.rpc_service* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %47
  %53 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i8* %53, i8** %9, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i8*, i8** %9, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %56, %52
  %62 = phi i1 [ false, %52 ], [ %60, %56 ]
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 1, i32 0
  %65 = sext i32 %64 to i64
  %66 = load %struct.rpc_service*, %struct.rpc_service** %6, align 8
  %67 = getelementptr inbounds %struct.rpc_service, %struct.rpc_service* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %61, %47
  %69 = load %struct.rpc_service*, %struct.rpc_service** %6, align 8
  %70 = getelementptr inbounds %struct.rpc_service, %struct.rpc_service* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %68
  %74 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %75 = load %struct.rpc_service*, %struct.rpc_service** %6, align 8
  %76 = getelementptr inbounds %struct.rpc_service, %struct.rpc_service* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @forbidden(%struct.strbuf* %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %73, %68
  %80 = load %struct.rpc_service*, %struct.rpc_service** %6, align 8
  ret %struct.rpc_service* %80
}

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @forbidden(%struct.strbuf*, i8*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.rpc_service*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @getenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
