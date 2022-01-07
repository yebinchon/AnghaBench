; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm.c_VM_Restart.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm.c_VM_Restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 (i64*)*, i32, i64 }

@MAX_QPATH = common dso_local global i32 0, align 4
@VMI_NATIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"VM_Restart()\0A\00", align 1
@qfalse = common dso_local global i32 0, align 4
@ERR_DROP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"VM_Restart failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @VM_Restart(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64 (i64*)*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %2
  %15 = load i32, i32* @MAX_QPATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64 (i64*)*, i64 (i64*)** %20, align 8
  store i64 (i64*)* %21, i64 (i64*)** %9, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = trunc i64 %16 to i32
  %26 = call i32 @Q_strncpyz(i8* %18, i32 %24, i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = call i32 @VM_Free(%struct.TYPE_7__* %27)
  %29 = load i64 (i64*)*, i64 (i64*)** %9, align 8
  %30 = load i32, i32* @VMI_NATIVE, align 4
  %31 = call %struct.TYPE_7__* @VM_Create(i8* %18, i64 (i64*)* %29, i32 %30)
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %4, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %3, align 8
  %33 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %33)
  br label %48

34:                                               ; preds = %2
  %35 = call i32 @Com_Printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = load i32, i32* @qfalse, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32* @VM_LoadQVM(%struct.TYPE_7__* %36, i32 %37, i32 %38)
  store i32* %39, i32** %6, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @ERR_DROP, align 4
  %43 = call i32 @Com_Error(i32 %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %48

44:                                               ; preds = %34
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @FS_FreeFile(i32* %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %3, align 8
  br label %48

48:                                               ; preds = %44, %41, %14
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Q_strncpyz(i8*, i32, i32) #2

declare dso_local i32 @VM_Free(%struct.TYPE_7__*) #2

declare dso_local %struct.TYPE_7__* @VM_Create(i8*, i64 (i64*)*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @Com_Printf(i8*) #2

declare dso_local i32* @VM_LoadQVM(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @Com_Error(i32, i8*) #2

declare dso_local i32 @FS_FreeFile(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
