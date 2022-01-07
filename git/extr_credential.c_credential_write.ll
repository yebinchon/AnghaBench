; ModuleID = '/home/carl/AnghaBench/git/extr_credential.c_credential_write.c'
source_filename = "/home/carl/AnghaBench/git/extr_credential.c_credential_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.credential = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"protocol\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"password\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @credential_write(%struct.credential* %0, i32* %1) #0 {
  %3 = alloca %struct.credential*, align 8
  %4 = alloca i32*, align 8
  store %struct.credential* %0, %struct.credential** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = load %struct.credential*, %struct.credential** %3, align 8
  %7 = getelementptr inbounds %struct.credential, %struct.credential* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @credential_write_item(i32* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32*, i32** %4, align 8
  %11 = load %struct.credential*, %struct.credential** %3, align 8
  %12 = getelementptr inbounds %struct.credential, %struct.credential* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @credential_write_item(i32* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.credential*, %struct.credential** %3, align 8
  %17 = getelementptr inbounds %struct.credential, %struct.credential* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @credential_write_item(i32* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.credential*, %struct.credential** %3, align 8
  %22 = getelementptr inbounds %struct.credential, %struct.credential* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @credential_write_item(i32* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.credential*, %struct.credential** %3, align 8
  %27 = getelementptr inbounds %struct.credential, %struct.credential* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @credential_write_item(i32* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %28)
  ret void
}

declare dso_local i32 @credential_write_item(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
