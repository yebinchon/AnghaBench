; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_filesys_lookup_file.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_filesys_lookup_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filesys_directory_node = type { i32, i32, %struct.filesys_directory_node*, %struct.filesys_directory_node*, i32*, %struct.filesys_directory_node*, i32 }

@.str = private unnamed_addr constant [30 x i8] c"filesys_lookup_file (%s, %d)\0A\00", align 1
@Root = common dso_local global %struct.filesys_directory_node* null, align 8
@tot_directory_nodes = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4
@MAX_FILENAME_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.filesys_directory_node* @filesys_lookup_file(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.filesys_directory_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.filesys_directory_node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.filesys_directory_node**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.filesys_directory_node*, align 8
  %12 = alloca %struct.filesys_directory_node*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %14)
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 47
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store %struct.filesys_directory_node* null, %struct.filesys_directory_node** %3, align 8
  br label %258

21:                                               ; preds = %2
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %4, align 8
  %24 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** @Root, align 8
  %25 = icmp eq %struct.filesys_directory_node* %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %21
  %27 = load i32, i32* @tot_directory_nodes, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @tot_directory_nodes, align 4
  %29 = call i8* @zmalloc0(i32 48)
  %30 = bitcast i8* %29 to %struct.filesys_directory_node*
  store %struct.filesys_directory_node* %30, %struct.filesys_directory_node** @Root, align 8
  %31 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** @Root, align 8
  %32 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 8
  %33 = load i32, i32* @S_IFDIR, align 4
  %34 = or i32 511, %33
  %35 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** @Root, align 8
  %36 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = call i8* @zmalloc0(i32 1)
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** @Root, align 8
  %40 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %39, i32 0, i32 4
  store i32* %38, i32** %40, align 8
  %41 = load i32, i32* @now, align 4
  %42 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** @Root, align 8
  %43 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %26, %21
  %45 = load i8*, i8** %4, align 8
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** @Root, align 8
  store %struct.filesys_directory_node* %49, %struct.filesys_directory_node** %3, align 8
  br label %258

50:                                               ; preds = %44
  %51 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** @Root, align 8
  store %struct.filesys_directory_node* %51, %struct.filesys_directory_node** %6, align 8
  br label %52

52:                                               ; preds = %50, %257
  %53 = load i8*, i8** %4, align 8
  %54 = call i8* @strchr(i8* %53, i8 signext 47)
  store i8* %54, i8** %7, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = sext i32 %59 to i64
  br label %67

61:                                               ; preds = %52
  %62 = load i8*, i8** %7, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  br label %67

67:                                               ; preds = %61, %57
  %68 = phi i64 [ %60, %57 ], [ %66, %61 ]
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @MAX_FILENAME_LENGTH, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store %struct.filesys_directory_node* null, %struct.filesys_directory_node** %3, align 8
  br label %258

74:                                               ; preds = %67
  %75 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %6, align 8
  %76 = icmp ne %struct.filesys_directory_node* %75, null
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %6, align 8
  %80 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %79, i32 0, i32 2
  store %struct.filesys_directory_node** %80, %struct.filesys_directory_node*** %9, align 8
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %197, %74
  %82 = load %struct.filesys_directory_node**, %struct.filesys_directory_node*** %9, align 8
  %83 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %82, align 8
  %84 = icmp ne %struct.filesys_directory_node* %83, null
  br i1 %84, label %85, label %200

85:                                               ; preds = %81
  %86 = load %struct.filesys_directory_node**, %struct.filesys_directory_node*** %9, align 8
  %87 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %86, align 8
  store %struct.filesys_directory_node* %87, %struct.filesys_directory_node** %11, align 8
  %88 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %11, align 8
  %89 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = load i8*, i8** %4, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @memcmp(i32* %90, i8* %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %197, label %95

95:                                               ; preds = %85
  %96 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %11, align 8
  %97 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %197, label %104

104:                                              ; preds = %95
  %105 = load i32, i32* %8, align 4
  %106 = load i8*, i8** %4, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %4, align 8
  %109 = load i8*, i8** %4, align 8
  %110 = load i8, i8* %109, align 1
  %111 = icmp ne i8 %110, 0
  br i1 %111, label %175, label %112

112:                                              ; preds = %104
  %113 = load i32, i32* %5, align 4
  switch i32 %113, label %174 [
    i32 129, label %114
    i32 128, label %139
    i32 130, label %159
    i32 131, label %173
  ]

114:                                              ; preds = %112
  %115 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %11, align 8
  %116 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp sge i32 %117, 0
  br i1 %118, label %130, label %119

119:                                              ; preds = %114
  %120 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %11, align 8
  %121 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %120, i32 0, i32 2
  %122 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %121, align 8
  %123 = icmp ne %struct.filesys_directory_node* %122, null
  br i1 %123, label %130, label %124

124:                                              ; preds = %119
  %125 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %11, align 8
  %126 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %125, i32 0, i32 5
  %127 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %126, align 8
  %128 = call i64 @do_check_perm(%struct.filesys_directory_node* %127, i32 2)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124, %119, %114
  store %struct.filesys_directory_node* null, %struct.filesys_directory_node** %3, align 8
  br label %258

131:                                              ; preds = %124
  %132 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %11, align 8
  %133 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %132, i32 0, i32 3
  %134 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %133, align 8
  %135 = load %struct.filesys_directory_node**, %struct.filesys_directory_node*** %9, align 8
  store %struct.filesys_directory_node* %134, %struct.filesys_directory_node** %135, align 8
  %136 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %6, align 8
  %137 = call i32 @filesys_update_modification_time(%struct.filesys_directory_node* %136)
  %138 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %11, align 8
  store %struct.filesys_directory_node* %138, %struct.filesys_directory_node** %3, align 8
  br label %258

139:                                              ; preds = %112
  %140 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %11, align 8
  %141 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %139
  %145 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %11, align 8
  %146 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %145, i32 0, i32 5
  %147 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %146, align 8
  %148 = call i64 @do_check_perm(%struct.filesys_directory_node* %147, i32 2)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %144, %139
  store %struct.filesys_directory_node* null, %struct.filesys_directory_node** %3, align 8
  br label %258

151:                                              ; preds = %144
  %152 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %11, align 8
  %153 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %152, i32 0, i32 3
  %154 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %153, align 8
  %155 = load %struct.filesys_directory_node**, %struct.filesys_directory_node*** %9, align 8
  store %struct.filesys_directory_node* %154, %struct.filesys_directory_node** %155, align 8
  %156 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %6, align 8
  %157 = call i32 @filesys_update_modification_time(%struct.filesys_directory_node* %156)
  %158 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %11, align 8
  store %struct.filesys_directory_node* %158, %struct.filesys_directory_node** %3, align 8
  br label %258

159:                                              ; preds = %112
  %160 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %11, align 8
  %161 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %160, i32 0, i32 3
  %162 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %161, align 8
  %163 = load %struct.filesys_directory_node**, %struct.filesys_directory_node*** %9, align 8
  store %struct.filesys_directory_node* %162, %struct.filesys_directory_node** %163, align 8
  %164 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %6, align 8
  %165 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %164, i32 0, i32 2
  %166 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %165, align 8
  %167 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %11, align 8
  %168 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %167, i32 0, i32 3
  store %struct.filesys_directory_node* %166, %struct.filesys_directory_node** %168, align 8
  %169 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %11, align 8
  %170 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %6, align 8
  %171 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %170, i32 0, i32 2
  store %struct.filesys_directory_node* %169, %struct.filesys_directory_node** %171, align 8
  %172 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %11, align 8
  store %struct.filesys_directory_node* %172, %struct.filesys_directory_node** %3, align 8
  br label %258

173:                                              ; preds = %112
  store %struct.filesys_directory_node* null, %struct.filesys_directory_node** %3, align 8
  br label %258

174:                                              ; preds = %112
  br label %175

175:                                              ; preds = %174, %104
  %176 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %11, align 8
  %177 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %176, i32 0, i32 3
  %178 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %177, align 8
  %179 = load %struct.filesys_directory_node**, %struct.filesys_directory_node*** %9, align 8
  store %struct.filesys_directory_node* %178, %struct.filesys_directory_node** %179, align 8
  %180 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %6, align 8
  %181 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %180, i32 0, i32 2
  %182 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %181, align 8
  %183 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %11, align 8
  %184 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %183, i32 0, i32 3
  store %struct.filesys_directory_node* %182, %struct.filesys_directory_node** %184, align 8
  %185 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %11, align 8
  %186 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %6, align 8
  %187 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %186, i32 0, i32 2
  store %struct.filesys_directory_node* %185, %struct.filesys_directory_node** %187, align 8
  %188 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %11, align 8
  %189 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp sge i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %175
  store %struct.filesys_directory_node* null, %struct.filesys_directory_node** %3, align 8
  br label %258

193:                                              ; preds = %175
  %194 = load i8*, i8** %4, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %4, align 8
  %196 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %11, align 8
  store %struct.filesys_directory_node* %196, %struct.filesys_directory_node** %6, align 8
  store i32 1, i32* %10, align 4
  br label %200

197:                                              ; preds = %95, %85
  %198 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %11, align 8
  %199 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %198, i32 0, i32 3
  store %struct.filesys_directory_node** %199, %struct.filesys_directory_node*** %9, align 8
  br label %81

200:                                              ; preds = %193, %81
  %201 = load i32, i32* %10, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %257, label %203

203:                                              ; preds = %200
  %204 = load i32, i32* %5, align 4
  %205 = icmp ugt i32 %204, 0
  br i1 %205, label %206, label %256

206:                                              ; preds = %203
  %207 = load i8*, i8** %4, align 8
  %208 = load i32, i32* %8, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %207, i64 %209
  %211 = load i8, i8* %210, align 1
  %212 = icmp ne i8 %211, 0
  br i1 %212, label %256, label %213

213:                                              ; preds = %206
  %214 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %6, align 8
  %215 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %256

218:                                              ; preds = %213
  %219 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %6, align 8
  %220 = call i64 @do_check_perm(%struct.filesys_directory_node* %219, i32 2)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %256, label %222

222:                                              ; preds = %218
  %223 = load i32, i32* @tot_directory_nodes, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* @tot_directory_nodes, align 4
  %225 = call i8* @zmalloc(i32 48)
  %226 = bitcast i8* %225 to %struct.filesys_directory_node*
  store %struct.filesys_directory_node* %226, %struct.filesys_directory_node** %12, align 8
  %227 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %6, align 8
  %228 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %12, align 8
  %229 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %228, i32 0, i32 5
  store %struct.filesys_directory_node* %227, %struct.filesys_directory_node** %229, align 8
  %230 = load i32, i32* %8, align 4
  %231 = add nsw i32 %230, 1
  %232 = call i8* @zmalloc(i32 %231)
  %233 = bitcast i8* %232 to i32*
  %234 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %12, align 8
  %235 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %234, i32 0, i32 4
  store i32* %233, i32** %235, align 8
  %236 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %12, align 8
  %237 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %236, i32 0, i32 4
  %238 = load i32*, i32** %237, align 8
  %239 = load i8*, i8** %4, align 8
  %240 = call i32 @strcpy(i32* %238, i8* %239)
  %241 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %12, align 8
  %242 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %241, i32 0, i32 2
  store %struct.filesys_directory_node* null, %struct.filesys_directory_node** %242, align 8
  %243 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %6, align 8
  %244 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %243, i32 0, i32 2
  %245 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %244, align 8
  %246 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %12, align 8
  %247 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %246, i32 0, i32 3
  store %struct.filesys_directory_node* %245, %struct.filesys_directory_node** %247, align 8
  %248 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %12, align 8
  %249 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %248, i32 0, i32 0
  store i32 -1, i32* %249, align 8
  %250 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %12, align 8
  %251 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %6, align 8
  %252 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %251, i32 0, i32 2
  store %struct.filesys_directory_node* %250, %struct.filesys_directory_node** %252, align 8
  %253 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %12, align 8
  %254 = call i32 @filesys_update_modification_time(%struct.filesys_directory_node* %253)
  %255 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %12, align 8
  store %struct.filesys_directory_node* %255, %struct.filesys_directory_node** %3, align 8
  br label %258

256:                                              ; preds = %218, %213, %206, %203
  store %struct.filesys_directory_node* null, %struct.filesys_directory_node** %3, align 8
  br label %258

257:                                              ; preds = %200
  br label %52

258:                                              ; preds = %256, %222, %192, %173, %159, %151, %150, %131, %130, %73, %48, %20
  %259 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %3, align 8
  ret %struct.filesys_directory_node* %259
}

declare dso_local i32 @vkprintf(i32, i8*, i8*, i32) #1

declare dso_local i8* @zmalloc0(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i64 @do_check_perm(%struct.filesys_directory_node*, i32) #1

declare dso_local i32 @filesys_update_modification_time(%struct.filesys_directory_node*) #1

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i32 @strcpy(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
