; ModuleID = '/home/carl/AnghaBench/git/extr_credential.c_credential_fill.c'
source_filename = "/home/carl/AnghaBench/git/extr_credential.c_credential_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.credential = type { i64, i64, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"credential helper '%s' told us to quit\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"unable to get password from user\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @credential_fill(%struct.credential* %0) #0 {
  %2 = alloca %struct.credential*, align 8
  %3 = alloca i32, align 4
  store %struct.credential* %0, %struct.credential** %2, align 8
  %4 = load %struct.credential*, %struct.credential** %2, align 8
  %5 = getelementptr inbounds %struct.credential, %struct.credential* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.credential*, %struct.credential** %2, align 8
  %10 = getelementptr inbounds %struct.credential, %struct.credential* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %80

14:                                               ; preds = %8, %1
  %15 = load %struct.credential*, %struct.credential** %2, align 8
  %16 = call i32 @credential_apply_config(%struct.credential* %15)
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %63, %14
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.credential*, %struct.credential** %2, align 8
  %20 = getelementptr inbounds %struct.credential, %struct.credential* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %66

24:                                               ; preds = %17
  %25 = load %struct.credential*, %struct.credential** %2, align 8
  %26 = load %struct.credential*, %struct.credential** %2, align 8
  %27 = getelementptr inbounds %struct.credential, %struct.credential* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @credential_do(%struct.credential* %25, i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.credential*, %struct.credential** %2, align 8
  %37 = getelementptr inbounds %struct.credential, %struct.credential* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %24
  %41 = load %struct.credential*, %struct.credential** %2, align 8
  %42 = getelementptr inbounds %struct.credential, %struct.credential* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %80

46:                                               ; preds = %40, %24
  %47 = load %struct.credential*, %struct.credential** %2, align 8
  %48 = getelementptr inbounds %struct.credential, %struct.credential* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load %struct.credential*, %struct.credential** %2, align 8
  %53 = getelementptr inbounds %struct.credential, %struct.credential* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %51, %46
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %17

66:                                               ; preds = %17
  %67 = load %struct.credential*, %struct.credential** %2, align 8
  %68 = call i32 @credential_getpass(%struct.credential* %67)
  %69 = load %struct.credential*, %struct.credential** %2, align 8
  %70 = getelementptr inbounds %struct.credential, %struct.credential* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %66
  %74 = load %struct.credential*, %struct.credential** %2, align 8
  %75 = getelementptr inbounds %struct.credential, %struct.credential* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %13, %45, %78, %73, %66
  ret void
}

declare dso_local i32 @credential_apply_config(%struct.credential*) #1

declare dso_local i32 @credential_do(%struct.credential*, i32, i8*) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @credential_getpass(%struct.credential*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
