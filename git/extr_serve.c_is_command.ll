; ModuleID = '/home/carl/AnghaBench/git/extr_serve.c_is_command.c'
source_filename = "/home/carl/AnghaBench/git/extr_serve.c_is_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protocol_capability = type { i32, i32 (i32, i32*)*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"command=\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"command '%s' requested after already requesting command '%s'\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"invalid command '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.protocol_capability**)* @is_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_command(i8* %0, %struct.protocol_capability** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.protocol_capability**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.protocol_capability*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.protocol_capability** %1, %struct.protocol_capability*** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @skip_prefix(i8* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %6)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %45

11:                                               ; preds = %2
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct.protocol_capability* @get_capability(i8* %12)
  store %struct.protocol_capability* %13, %struct.protocol_capability** %7, align 8
  %14 = load %struct.protocol_capability**, %struct.protocol_capability*** %5, align 8
  %15 = load %struct.protocol_capability*, %struct.protocol_capability** %14, align 8
  %16 = icmp ne %struct.protocol_capability* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.protocol_capability**, %struct.protocol_capability*** %5, align 8
  %20 = load %struct.protocol_capability*, %struct.protocol_capability** %19, align 8
  %21 = getelementptr inbounds %struct.protocol_capability, %struct.protocol_capability* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* %18, i32 %22)
  br label %24

24:                                               ; preds = %17, %11
  %25 = load %struct.protocol_capability*, %struct.protocol_capability** %7, align 8
  %26 = icmp ne %struct.protocol_capability* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load %struct.protocol_capability*, %struct.protocol_capability** %7, align 8
  %29 = getelementptr inbounds %struct.protocol_capability, %struct.protocol_capability* %28, i32 0, i32 1
  %30 = load i32 (i32, i32*)*, i32 (i32, i32*)** %29, align 8
  %31 = load i32, i32* @the_repository, align 4
  %32 = call i32 %30(i32 %31, i32* null)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.protocol_capability*, %struct.protocol_capability** %7, align 8
  %36 = getelementptr inbounds %struct.protocol_capability, %struct.protocol_capability* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34, %27, %24
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 (i8*, i8*, ...) @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.protocol_capability*, %struct.protocol_capability** %7, align 8
  %44 = load %struct.protocol_capability**, %struct.protocol_capability*** %5, align 8
  store %struct.protocol_capability* %43, %struct.protocol_capability** %44, align 8
  store i32 1, i32* %3, align 4
  br label %46

45:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local %struct.protocol_capability* @get_capability(i8*) #1

declare dso_local i32 @die(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
