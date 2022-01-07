; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_copy_updates.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_copy_updates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filesys_inode = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32* }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"copy_updates: T = %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"copy_updates: tr = %d, to = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"copy_updates: moved_bytes = %d, start pos %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"copy_updates: moved_bytes = %d, dest pos %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"copy_updates: returns %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.filesys_inode*, i32, i32, i8*, i32*)* @copy_updates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_updates(%struct.filesys_inode* %0, i32 %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.filesys_inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_5__*, align 8
  %19 = alloca i32, align 4
  store %struct.filesys_inode* %0, %struct.filesys_inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = add i32 %20, %21
  store i32 %22, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %23 = load i32*, i32** %10, align 8
  store i32 0, i32* %23, align 4
  %24 = load i32, i32* @verbosity, align 4
  %25 = icmp sge i32 %24, 3
  br i1 %25, label %26, label %31

26:                                               ; preds = %5
  %27 = load %struct.filesys_inode*, %struct.filesys_inode** %6, align 8
  %28 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @filesys_dump_tree(i32 %29)
  br label %31

31:                                               ; preds = %26, %5
  %32 = load i32, i32* %7, align 4
  %33 = icmp ugt i32 %32, 0
  br i1 %33, label %34, label %117

34:                                               ; preds = %31
  %35 = load %struct.filesys_inode*, %struct.filesys_inode** %6, align 8
  %36 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = sub i32 %38, 1
  %40 = call %struct.TYPE_5__* @tree_upperbound(i32 %37, i32 %39)
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** %13, align 8
  %41 = load i32, i32* @verbosity, align 4
  %42 = icmp sge i32 %41, 3
  br i1 %42, label %43, label %55

43:                                               ; preds = %34
  %44 = load i32, i32* @stderr, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %46 = call i32 @fprintf(i32 %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 @fwrite(i32* %49, i32 1, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %43, %34
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %57 = icmp ne %struct.TYPE_5__* %56, null
  br i1 %57, label %58, label %116

58:                                               ; preds = %55
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add i32 %62, %65
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %15, align 4
  %69 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %7, align 4
  %72 = sub i32 %70, %71
  %73 = load i32*, i32** %10, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ult i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ugt i32 %79, %80
  br i1 %81, label %82, label %115

82:                                               ; preds = %58
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %7, align 4
  %85 = sub i32 %83, %84
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ugt i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %16, align 4
  br label %91

91:                                               ; preds = %89, %82
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sub i32 %93, %96
  %98 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 %97)
  %99 = load i8*, i8** %9, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sub i32 %103, %106
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %102, i64 %108
  %110 = load i32, i32* %16, align 4
  %111 = call i32 @memcpy(i8* %99, i32* %109, i32 %110)
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %12, align 4
  %114 = add i32 %113, %112
  store i32 %114, i32* %12, align 4
  br label %115

115:                                              ; preds = %91, %58
  br label %116

116:                                              ; preds = %115, %55
  br label %117

117:                                              ; preds = %116, %31
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %17, align 4
  br label %119

119:                                              ; preds = %163, %117
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp ult i32 %120, %121
  br i1 %122, label %123, label %189

123:                                              ; preds = %119
  %124 = load %struct.filesys_inode*, %struct.filesys_inode** %6, align 8
  %125 = getelementptr inbounds %struct.filesys_inode, %struct.filesys_inode* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %17, align 4
  %128 = call %struct.TYPE_5__* @tree_lowerbound(i32 %126, i32 %127)
  store %struct.TYPE_5__* %128, %struct.TYPE_5__** %18, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %130 = icmp eq %struct.TYPE_5__* %129, null
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  br label %189

132:                                              ; preds = %123
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %17, align 4
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* %11, align 4
  %138 = icmp uge i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  br label %189

140:                                              ; preds = %132
  %141 = load i32, i32* %17, align 4
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = add i32 %141, %144
  %146 = load i32, i32* %7, align 4
  %147 = sub i32 %145, %146
  %148 = load i32*, i32** %10, align 8
  store i32 %147, i32* %148, align 4
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* %7, align 4
  %152 = sub i32 %150, %151
  %153 = sub i32 %149, %152
  store i32 %153, i32* %19, align 4
  %154 = load i32, i32* %19, align 4
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp ugt i32 %154, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %140
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  store i32 %162, i32* %19, align 4
  br label %163

163:                                              ; preds = %159, %140
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* %17, align 4
  %166 = load i32, i32* %7, align 4
  %167 = sub i32 %165, %166
  %168 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %164, i32 %167)
  %169 = load i32, i32* %19, align 4
  %170 = load i32, i32* %12, align 4
  %171 = add i32 %170, %169
  store i32 %171, i32* %12, align 4
  %172 = load i8*, i8** %9, align 8
  %173 = load i32, i32* %17, align 4
  %174 = load i32, i32* %7, align 4
  %175 = sub i32 %173, %174
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %172, i64 %176
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %19, align 4
  %183 = call i32 @memcpy(i8* %177, i32* %181, i32 %182)
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %17, align 4
  %188 = add i32 %187, %186
  store i32 %188, i32* %17, align 4
  br label %119

189:                                              ; preds = %139, %131, %119
  %190 = load i32, i32* %12, align 4
  %191 = load i32, i32* %8, align 4
  %192 = icmp ule i32 %190, %191
  %193 = zext i1 %192 to i32
  %194 = call i32 @assert(i32 %193)
  %195 = load i32, i32* %12, align 4
  %196 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %195)
  %197 = load i32, i32* %12, align 4
  ret i32 %197
}

declare dso_local i32 @filesys_dump_tree(i32) #1

declare dso_local %struct.TYPE_5__* @tree_upperbound(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @fwrite(i32*, i32, i32, i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local %struct.TYPE_5__* @tree_lowerbound(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
