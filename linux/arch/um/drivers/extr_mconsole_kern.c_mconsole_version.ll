; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_mconsole_kern.c_mconsole_version.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_mconsole_kern.c_mconsole_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc_request = type { i32 }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [15 x i8] c"%s %s %s %s %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mconsole_version(%struct.mc_request* %0) #0 {
  %2 = alloca %struct.mc_request*, align 8
  %3 = alloca [256 x i8], align 16
  store %struct.mc_request* %0, %struct.mc_request** %2, align 8
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %5 = call %struct.TYPE_2__* (...) @utsname()
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = call %struct.TYPE_2__* (...) @utsname()
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = call %struct.TYPE_2__* (...) @utsname()
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load i8*, i8** %12, align 8
  %14 = call %struct.TYPE_2__* (...) @utsname()
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %16 = load i8*, i8** %15, align 8
  %17 = call %struct.TYPE_2__* (...) @utsname()
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @sprintf(i8* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %7, i8* %10, i8* %13, i8* %16, i8* %19)
  %21 = load %struct.mc_request*, %struct.mc_request** %2, align 8
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %23 = call i32 @mconsole_reply(%struct.mc_request* %21, i8* %22, i32 0, i32 0)
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local %struct.TYPE_2__* @utsname(...) #1

declare dso_local i32 @mconsole_reply(%struct.mc_request*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
