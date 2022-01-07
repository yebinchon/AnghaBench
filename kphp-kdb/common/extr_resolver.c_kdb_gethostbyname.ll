; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_resolver.c_kdb_gethostbyname.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_resolver.c_kdb_gethostbyname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i8* }
%struct.host = type { i32 }

@kdb_hosts_loaded = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i32 0, align 4
@Hosts = common dso_local global i32 0, align 4
@hret = common dso_local global %struct.hostent zeroinitializer, align 8
@ipaddr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hostent* @kdb_gethostbyname(i8* %0) #0 {
  %2 = alloca %struct.hostent*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 16
  %6 = alloca %struct.host*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i64, i64* @kdb_hosts_loaded, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 (...) @kdb_load_hosts()
  br label %11

11:                                               ; preds = %9, %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @strlen(i8* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 91
  br i1 %18, label %19, label %45

19:                                               ; preds = %11
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 93
  br i1 %27, label %28, label %45

28:                                               ; preds = %19
  %29 = load i32, i32* %4, align 4
  %30 = icmp sle i32 %29, 64
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i32, i32* %4, align 4
  %36 = sub nsw i32 %35, 2
  %37 = call i32 @memcpy(i8* %32, i8* %34, i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = sub nsw i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %40
  store i8 0, i8* %41, align 1
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %43 = load i32, i32* @AF_INET6, align 4
  %44 = call %struct.hostent* @gethostbyname2(i8* %42, i32 %43)
  store %struct.hostent* %44, %struct.hostent** %2, align 8
  br label %108

45:                                               ; preds = %28, %19, %11
  %46 = load i64, i64* @kdb_hosts_loaded, align 8
  %47 = icmp sle i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load i8*, i8** %3, align 8
  %50 = call i64 @gethostbyname(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = inttoptr i64 %50 to %struct.hostent*
  br label %58

54:                                               ; preds = %48
  %55 = load i8*, i8** %3, align 8
  %56 = load i32, i32* @AF_INET6, align 4
  %57 = call %struct.hostent* @gethostbyname2(i8* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %52
  %59 = phi %struct.hostent* [ %53, %52 ], [ %57, %54 ]
  store %struct.hostent* %59, %struct.hostent** %2, align 8
  br label %108

60:                                               ; preds = %45
  %61 = load i32, i32* %4, align 4
  %62 = icmp sge i32 %61, 128
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load i8*, i8** %3, align 8
  %65 = call i64 @gethostbyname(i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = inttoptr i64 %65 to %struct.hostent*
  br label %73

69:                                               ; preds = %63
  %70 = load i8*, i8** %3, align 8
  %71 = load i32, i32* @AF_INET6, align 4
  %72 = call %struct.hostent* @gethostbyname2(i8* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %67
  %74 = phi %struct.hostent* [ %68, %67 ], [ %72, %69 ]
  store %struct.hostent* %74, %struct.hostent** %2, align 8
  br label %108

75:                                               ; preds = %60
  %76 = load i8*, i8** %3, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call %struct.host* @getHash(i32* @Hosts, i8* %76, i32 %77, i32 0)
  store %struct.host* %78, %struct.host** %6, align 8
  %79 = load %struct.host*, %struct.host** %6, align 8
  %80 = icmp ne %struct.host* %79, null
  br i1 %80, label %102, label %81

81:                                               ; preds = %75
  %82 = load i8*, i8** %3, align 8
  %83 = call i64 @strchr(i8* %82, i8 signext 46)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i8*, i8** %3, align 8
  %87 = call i64 @strchr(i8* %86, i8 signext 58)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %85, %81
  %90 = load i8*, i8** %3, align 8
  %91 = call i64 @gethostbyname(i8* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = inttoptr i64 %91 to %struct.hostent*
  br label %99

95:                                               ; preds = %89
  %96 = load i8*, i8** %3, align 8
  %97 = load i32, i32* @AF_INET6, align 4
  %98 = call %struct.hostent* @gethostbyname2(i8* %96, i32 %97)
  br label %99

99:                                               ; preds = %95, %93
  %100 = phi %struct.hostent* [ %94, %93 ], [ %98, %95 ]
  store %struct.hostent* %100, %struct.hostent** %2, align 8
  br label %108

101:                                              ; preds = %85
  store %struct.hostent* null, %struct.hostent** %2, align 8
  br label %108

102:                                              ; preds = %75
  %103 = load i8*, i8** %3, align 8
  store i8* %103, i8** getelementptr inbounds (%struct.hostent, %struct.hostent* @hret, i32 0, i32 0), align 8
  %104 = load %struct.host*, %struct.host** %6, align 8
  %105 = getelementptr inbounds %struct.host, %struct.host* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @htonl(i32 %106)
  store i32 %107, i32* @ipaddr, align 4
  store %struct.hostent* @hret, %struct.hostent** %2, align 8
  br label %108

108:                                              ; preds = %102, %101, %99, %73, %58, %31
  %109 = load %struct.hostent*, %struct.hostent** %2, align 8
  ret %struct.hostent* %109
}

declare dso_local i32 @kdb_load_hosts(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.hostent* @gethostbyname2(i8*, i32) #1

declare dso_local i64 @gethostbyname(i8*) #1

declare dso_local %struct.host* @getHash(i32*, i8*, i32, i32) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
