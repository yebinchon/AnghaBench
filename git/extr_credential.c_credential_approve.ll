; ModuleID = '/home/carl/AnghaBench/git/extr_credential.c_credential_approve.c'
source_filename = "/home/carl/AnghaBench/git/extr_credential.c_credential_approve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.credential = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"store\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @credential_approve(%struct.credential* %0) #0 {
  %2 = alloca %struct.credential*, align 8
  %3 = alloca i32, align 4
  store %struct.credential* %0, %struct.credential** %2, align 8
  %4 = load %struct.credential*, %struct.credential** %2, align 8
  %5 = getelementptr inbounds %struct.credential, %struct.credential* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %48

9:                                                ; preds = %1
  %10 = load %struct.credential*, %struct.credential** %2, align 8
  %11 = getelementptr inbounds %struct.credential, %struct.credential* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.credential*, %struct.credential** %2, align 8
  %16 = getelementptr inbounds %struct.credential, %struct.credential* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %9
  br label %48

20:                                               ; preds = %14
  %21 = load %struct.credential*, %struct.credential** %2, align 8
  %22 = call i32 @credential_apply_config(%struct.credential* %21)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %42, %20
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.credential*, %struct.credential** %2, align 8
  %26 = getelementptr inbounds %struct.credential, %struct.credential* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %23
  %31 = load %struct.credential*, %struct.credential** %2, align 8
  %32 = load %struct.credential*, %struct.credential** %2, align 8
  %33 = getelementptr inbounds %struct.credential, %struct.credential* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @credential_do(%struct.credential* %31, i32 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %30
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %23

45:                                               ; preds = %23
  %46 = load %struct.credential*, %struct.credential** %2, align 8
  %47 = getelementptr inbounds %struct.credential, %struct.credential* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  br label %48

48:                                               ; preds = %45, %19, %8
  ret void
}

declare dso_local i32 @credential_apply_config(%struct.credential*) #1

declare dso_local i32 @credential_do(%struct.credential*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
