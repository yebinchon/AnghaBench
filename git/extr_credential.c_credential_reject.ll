; ModuleID = '/home/carl/AnghaBench/git/extr_credential.c_credential_reject.c'
source_filename = "/home/carl/AnghaBench/git/extr_credential.c_credential_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.credential = type { i64, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"erase\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @credential_reject(%struct.credential* %0) #0 {
  %2 = alloca %struct.credential*, align 8
  %3 = alloca i32, align 4
  store %struct.credential* %0, %struct.credential** %2, align 8
  %4 = load %struct.credential*, %struct.credential** %2, align 8
  %5 = call i32 @credential_apply_config(%struct.credential* %4)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %25, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.credential*, %struct.credential** %2, align 8
  %9 = getelementptr inbounds %struct.credential, %struct.credential* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %6
  %14 = load %struct.credential*, %struct.credential** %2, align 8
  %15 = load %struct.credential*, %struct.credential** %2, align 8
  %16 = getelementptr inbounds %struct.credential, %struct.credential* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @credential_do(%struct.credential* %14, i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %13
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %6

28:                                               ; preds = %6
  %29 = load %struct.credential*, %struct.credential** %2, align 8
  %30 = getelementptr inbounds %struct.credential, %struct.credential* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @FREE_AND_NULL(i32 %31)
  %33 = load %struct.credential*, %struct.credential** %2, align 8
  %34 = getelementptr inbounds %struct.credential, %struct.credential* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @FREE_AND_NULL(i32 %35)
  %37 = load %struct.credential*, %struct.credential** %2, align 8
  %38 = getelementptr inbounds %struct.credential, %struct.credential* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  ret void
}

declare dso_local i32 @credential_apply_config(%struct.credential*) #1

declare dso_local i32 @credential_do(%struct.credential*, i32, i8*) #1

declare dso_local i32 @FREE_AND_NULL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
